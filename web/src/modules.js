export default {
  Dataset: {
    common: {
      params: [],
      ports: {
        outputs: [
          { name:'dataset', label: 'out' }
        ]
      }
    },
    type: [
      {
        name: 'Default Dataset',
        type: 'default',
        params: [
          { label: 'source', type: 'Select', options: ['tooth', 'bucky', 'heptane', 'magnetic'], default: 'heptane' }
        ]
      },
      {
        name: 'Time-varying Scalar',
        type: 'time',
        params: [
          { label: 'source', type: 'Select', options: ['lsabel'], default: 'lsabel' },
          { label: 'timestep', type: 'Int', min: 0, max: 48, default: 0 }
        ]
      },
    ]
  },
  TransferFunction: {
    common: {
      params: [
        { label: 'tfcn', type: 'TransferFunction', rangeMax: 100, rangeMin: 0, default: [
          { x: 0, y: 0, color: '#00008e' },
          { x: 1/6, y: 1/6, color: '#0000ff' },
          { x: 2/6, y: 2/6, color: '#00ffff' },
          { x: 3/6, y: 3/6, color: '#80ff80' },
          { x: 4/6, y: 4/6, color: '#ffff00' },
          { x: 5/6, y: 5/6, color: '#ff00ff' },
          { x: 1, y: 1, color: '#800000' }
        ] }
      ],
      ports: {
        outputs: [
          { name: 'transferfunction', label: 'out' }
        ]
      }
    },
    type: [
      {
        name: 'Linear Piecewise',
        type: 'linear',
      }
    ]
  },
  Volume: {
    common: {
      params: [
        { label: 'voxelRange', type: 'Vec2f' },
        { label: 'gradientShadingEnabled', type: 'Switch', default: false },
        { label: 'preIntegration', type: 'Switch', default: false },
        { label: 'singleShade', type: 'Switch', default: true },
        { label: 'adaptiveSampling', type: 'Switch', default: true },
        { label: 'adaptiveScalar', type: 'Float', default: 15 },
        { label: 'adaptiveMaxSamplingRate', type: 'Float', default: 2 },
        { label: 'samplingRate', type: 'Float', default: 0.125, min: 0.01, max: 20 },
        { label: 'specular', type: 'Vec3f', default: [0.3, 0.3, 0.3] },
      ],
      ports: {
        inputs: [
          { name: 'transferfunction', label: 'in' },
          { name: 'dataset', label: 'in' }
        ],
        outputs: [
          { name: 'volume', label: 'out' }
        ]
      }
    },
    type: [
      {
        name: 'Structured Volume',
        type: 'structured',
        params: [
          { label: 'gridOrigin', type: 'Vec3f' },
          { label: 'gridSpacing', type: 'Vec3f' },
        ],
      },
      // {
      //   name: 'AMR Volume',
      //   type: 'AMR',
      //   params: [
      //     { label: 'gridOrigin', type: 'Vec3f' },
      //     { label: 'gridSpacing', type: 'Vec3f' },
      //     { label: 'amrMethod', type: 'select' },
      //     { label: 'voxelType', type: 'select' },
      //     { label: 'brickInfo', type: '_data' },
      //     { label: 'brickData', type: '_data' },
      //   ],
      // },
      // {
      //   name: 'Unstructured Volume',
      //   type: 'unstructured',
      //   params: [
      //     { label: 'vertices', type: 'vec3if[]' },
      //     { label: 'field', type: 'intices' },
      //     { label: 'hexMethod', type: 'select' },
      //   ]
      // },
    ]
  },
  'Volume Processing': {
    common: {
      params: [],
      ports: {
        inputs: [
          { name: 'volume1', label: 'in' }
        ],
        outputs: [
          { name: 'volume', label: 'out' }
        ]
      }
    },
    type: [
      {
        name: 'Volume Clipping',
        type: 'clipping',
        params: [
          { label: 'lower', type: 'Vec3f', default: [0, 0, 0] },
          { label: 'upper', type: 'Vec3f', default: [0, 0, 0] }
        ]
      },
      {
        name: 'Volume Difference',
        type: 'diff',
        ports: {
          inputs: [
            { name: 'volume2', label: 'in' }
          ]
        }
      },
      {
        name: 'Volume Transform',
        type: 'transform',
        params: [
          { label: 'x', type: 'Float', min: -500, max: 500 },
          { label: 'y', type: 'Float', min: -500, max: 500 },
          { label: 'z', type: 'Float', min: -500, max: 500 }
        ]
      }
    ]
  },
  Geometry: {
    common: {
      ports: {
        outputs: [{ name: 'geometry', label: 'out' }]
      }
    },
    type: [
      {
        name: 'Triangle Mesh',
        type: 'triangle',
        params: [
          { label: 'vertex', type: 'Vec3f(a)[]' },
          { label: 'vertex.normal', type: 'Vec3f(a)[]' },
          { label: 'vertex.color', type: 'vec4f(a)[]' },
          { label: 'vertex.texcoord', type: 'vec2f[]' },
          { label: 'index', type: 'vec3i(a)[]' },
        ]
      },
      {
        name: 'Sphere',
        type: 'sphere',
        params: [
          { label: 'radius', type: 'Float' },
          { label: 'spheres', type: '_data' },
          { label: 'bytes_per_sphere', type: 'int' },
          { label: 'offset_center', type: 'int' },
          { label: 'offset_radius', type: 'int' },
          { label: 'color', type: 'vec4f[]' },
          { label: 'texcoord', type: 'vec2f[]' },
        ]
      },
      {
        name: 'Cylinders',
      },
      {
        name: 'Streamlines'
      },
      {
        name: 'Isosurface',
        type: 'isosurfaces',
        params: [
          { label: 'isovalues', type: 'Slider', max: 255, min: 0, default: 0.3 },
        ]
      },
      {
        name: 'Slice'
      },
      {
        name: 'Bounding Box'
      }
    ],
  },
  Model: {
    common: {
      ports: {
        inputs: [
          { name: 'geometry', label: 'in', repeatable: true, required: false },
          { name: 'volume', label: 'in' }
        ],
        outputs: [
          { name: 'model', label: 'out' }
        ]
      }
    },
    type: [{ name: 'Default Model' }]
  },
  Lights: {
    common: {
      ports: {
        outputs: [{ name: 'light', label: 'out' }]
      },
      params: [
        { label: 'color', type: 'Color', default: [255, 255, 255] },
        { label: 'intensity', type: 'float', default: 1 },
        { label: 'isVisible', type: 'Switch', default: true },
      ]
    },
    type: [
      {
        name: 'Directional Light',
        type: 'directional',
        params: [
          { label: 'direction', type: 'Vec3f(a)' },
          { label: 'angularDiameter', type: 'Float' }
        ]
      },
      {
        name: 'Point Light',
        type: 'point',
        params: [
          { label: 'poition', type: 'Vec3f(a)' },
          { label: 'radius', type: 'Float' },
        ]
      },
      {
        name: 'Spot Light',
        type: 'spot',
        params: [
          { label: 'poition', type: 'Vec3f' },
          { label: 'direction', type: 'Vec3f' },
          { label: 'openingAngle', type: 'Float' },
          { label: 'penumbraAngle', type: 'Float' },
          { label: 'radius', type: 'Float' }
        ]
      },
      { name: 'Quad Light' },
      { name: 'HDRI Light' },
      { name: 'Ambient Light' },
    ]
  },
  /* Camera: {
    common: {
      params: [
        { label: 'pos', type: 'Vec3f' },
        { label: 'dir', type: 'Vec3f' },
        { label: 'up', type: 'Vec3f', default: [0, 1, 0], max: 1, min: -1 },
        { label: 'nearClip', type: 'Float', min: 0.0, max: 500, default: 0.0 },
      ],
      ports: {
        outputs: [{ name: 'camera', label: 'out' }]
      }
    },
    type: [
      {
        name: 'Perspective Camera',
        type: 'perspective',
        params: [
          { label: 'stereoMode', type: 'Select', options: [
            { label: 'no stereo', value: 0 },
            { label: 'left eye', value: 1 },
            { label: 'right eye', value: 2 },
            { label: 'side-by-side', value: 3 }
          ]},
          { label: 'fovy', type: 'Float' },
          { label: 'apertureRadius', type: 'Float' },
          { label: 'foucsDistance', type: 'Float' },
          { label: 'architectural', type: 'Float' },
          { label: 'interpupillartDistance', type: 'Float' },
        ]
      },
      {
        name: 'Orthographic Camera',
        type: 'orthographic',
        params: [
          { label: 'height', type: 'Float' },
          { label: 'aspect', type: 'Float' }
        ]
      }
    ]
  }, */
  Rendering: {
    common: {
      ports: {
        inputs: [
          { name: 'lights', label: 'in', repeatable: true, required: false },
          { name: 'model', label: 'in', repeatable: true }
        ],
        outputs: [
          { name: 'image', label: 'out' }
        ]
      },
      params: [
        { label: 'epsilon', type: 'Float' },
        { label: 'spp', type: 'Int' },
        { label: 'maxDepth', type: 'Int' },
        { label: 'minContribution', type: 'Float' },
      ]
    },
    type: [
      {
        name: 'SciVis Rendering',
        type: 'scivis',
        params: [
          { label: 'shadowsEnabled', type: 'Switch' },
          { label: 'aoSamples', type: 'Int', default: 1 },
          { label: 'aoDistance', type: 'Float' },
          { label: 'aoTransparencyEnabled', type: 'Switch' },
          { label: 'oneSidedLighting', type: 'Switch' },
          { label: 'pos', type: 'Vec3f', default: [100, 100, 100] },
          { label: 'dir', type: 'Vec3f', default: [-1, -1, -1] },
          { label: 'up', type: 'Vec3f', default: [0, 1, 0], max: 1, min: -1 },
          { label: 'nearClip', type: 'Float', min: 0.0, max: 500, default: 0.0 },
          { label: 'stereoMode', type: 'Select', options: [
            { label: 'no stereo', value: 0 },
            { label: 'left eye', value: 1 },
            { label: 'right eye', value: 2 },
            { label: 'side-by-side', value: 3 }
          ], default: 0 },
          { label: 'fovy', type: 'Float' },
          { label: 'apertureRadius', type: 'Float' },
          { label: 'foucsDistance', type: 'Float' },
          { label: 'architectural', type: 'Float' },
          { label: 'interpupillartDistance', type: 'Float' },
        ]
      }
    ]
  },
  'Image Processing': {
    common: {
      ports: {
        inputs: [
          { name: 'image', label: 'in' },
        ],
        outputs: [
          { name: 'image', label: 'out' },
        ]
      },
    },
    type: [
      {
        name: 'Image Scale'
      }
    ]
  },
  Display: {
    common: {
      ports: {
        inputs: [
          { name: 'image', label: 'in' },
        ]
      },
      params: [
        { label: 'width', type: 'Int', max: 1024, min: 64, default: 64 },
        { label: 'height', type: 'Int', max: 1024, min: 64, default: 64 },
      ]
    },
    type: [
      {
        name: 'Image Display',
        node: 'image',
        params: []
      },
      {
        name: 'Animation Display',
        node: 'animation',
        params: []
      }
    ]
  },
  /* Transition: {
    ports: []
  } */
}