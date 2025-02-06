#include "oceaneffect.h"

OceanEffect::OceanEffect() :
    m_delta(0.5),
    m_distanceX(M_PI+m_delta),
    m_distanceZ(M_PI+m_delta),
    m_t(0),
    m_w(1),
    m_amplitude(1)
{
    setupGeometry();
}

void OceanEffect::setDistanceX(float distanceX)
{
    if (m_distanceX == distanceX)
        return;
    m_distanceX = distanceX;
    setupGeometry();
    emit distanceXChanged(m_distanceX);
}

void OceanEffect::setDistanceZ(float distanceZ)
{
    if (m_distanceZ == distanceZ)
        return;
    m_distanceZ = distanceZ;
    setupGeometry();
    emit distanceZChanged(m_distanceZ);
}

void OceanEffect::setDelta(float delta)
{
    if (m_delta == delta)
        return;
    m_delta = delta;
    setupGeometry();
    emit deltaChanged(m_delta);
}

void OceanEffect::setT(float t)
{
    if (m_t == t)
        return;
    m_t = t;
    updateGeometry();
    emit tChanged(m_t);
}

void OceanEffect::setW(float w)
{
    if (m_w == w)
        return;
    m_w = w;
    updateGeometry();
    emit wChanged(m_w);
}

void OceanEffect::setAmplitude(float amplitude)
{
    if (m_amplitude == amplitude)
        return;
    m_amplitude = amplitude;
    updateGeometry();
    emit amplitudeChanged(m_amplitude);
}

void OceanEffect::setupGeometry()
{
    clear();
    int stride_int = 9;

    setupVertices();
    setupIndexes();

    //setPrimitiveType(QQuick3DGeometry::PrimitiveType::LineStrip);
    setPrimitiveType(QQuick3DGeometry::PrimitiveType::TriangleStrip);
    setStride(stride_int * sizeof(float));
    // TODO: add setBounds() for picking()
    //addAttribute(QQuick3DGeometry::Attribute::PositionSemantic, 0, Attribute::F32Type);

    //setStride(sizeof(QVector3D));
    addAttribute(QQuick3DGeometry::Attribute::PositionSemantic, 0, QQuick3DGeometry::Attribute::F32Type);
    addAttribute(QQuick3DGeometry::Attribute::ColorSemantic, 3*sizeof(float), QQuick3DGeometry::Attribute::F32Type);
    addAttribute(QQuick3DGeometry::Attribute::NormalSemantic, 6*sizeof(float), QQuick3DGeometry::Attribute::F32Type);
    addAttribute(QQuick3DGeometry::Attribute::IndexSemantic, 0, QQuick3DGeometry::Attribute::U32Type);
    update();
}

void OceanEffect::updateGeometry()
{
    setupVertices();
    update();
}

void OceanEffect::setupVertices()
{
    int countX = int(m_distanceX / m_delta);
    int countZ = int(m_distanceZ / m_delta);


    int stride_int = 9;
    vertices.resize( (countX) * (countZ) * stride_int * sizeof(float));

    float *p = reinterpret_cast<float *>(vertices.data());

    float color1_r = 0;
    float color1_g = 0.6;
    float color1_b = 0.6;

    float color2_r = 0;
    float color2_g = 0.9;
    float color2_b = 0.9;

    int colorCount = 0;

    float x, y, z;

    for (int j=0; j < countZ ;j++)
    {
        for (int i=0; i < countX ;i++)
        {
            x = i * m_delta;
            z = j * m_delta;
            //y = m_amplitude * cos(x * m_w) * sin(z * m_w) * qCos(m_t);
            y = m_amplitude * cos(x * m_w) * sin(z * m_w) * qCos(m_t);
            *p++ = x;
            *p++ = y;
            *p++ = z;

            if (colorCount % 2 == 1){
                *p++ = color1_r;
                *p++ = color1_g;
                *p++ = color1_b;
            }
            else {
                *p++ = color2_r;
                *p++ = color2_g;
                *p++ = color2_b;
            }
            colorCount++;

            //todo: check normals ????
            int nx = x/(2*M_PI);
            float x_normalized = x - float(2*M_PI*nx);
            float xv = qCos(x_normalized);// * qCos(m_t);
            float yx_normalized = qSin(x_normalized);

            int nz = z/(2*M_PI);
            float z_normalized = z - float(2*M_PI*nz);
            float zv = qCos(z_normalized);// * qCos(m_t);
            float yz_normalized = qSin(z_normalized);
            float yv = yx_normalized * yz_normalized;// * qCos(m_t);

            QVector3D normals(xv, yv, zv);
            normals.normalize();

            //*p++ = (normals.x());
            //*p++ = (normals.y());
            ///*p++ = (normals.z());

            *p++ = qAbs(normals.x());
            *p++ = qAbs(normals.y());
            *p++ = qAbs(normals.z());


        }
    }

    setVertexData(vertices);
    // TODO: add setBounds() for picking()

}

void OceanEffect::setupIndexes()
{
    int countX = int(m_distanceX / m_delta);
    int countZ = int(m_distanceZ / m_delta);

    int indice_Size = (countZ-3)*(countX+1)*2 // middle rows, each row with two degenerated vertices
            + 2*(countX*2+1);//first and last rows, each row with one degenerated vertices

    indices.resize( indice_Size * sizeof(int));
    int *indice = reinterpret_cast<int *>(indices.data());


    int k, l;
    for (k=0; k < countZ-1 ;k++)
    {
        for (l=0; l < countX ;l++)
        {
            *indice++ = countX*k + l;
            *indice++ = countX*k + l + countX;
        }
        if (k < countZ-2)//add degenerated triangles if this is not the last row
        {
            *indice++ = k*countX + 2*countX - 1;
            *indice++ = k*countX + countX;
        }
    }

    setIndexData(indices);
}

