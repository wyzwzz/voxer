export type AnnotationType = "Rect" | "Polygon";

interface Annotation {
  comment: string;
  // 通常coordinates数组只有一个元素
  // 当coordinates数组有多个元素时，即表示带内部空洞的框标注，第一个元素表示外环，剩余元素均为内环
  coordinates: Array<[number, number, number, number]> | Array<Array<[number, number]>>;
}

export type SliceAnnotations = Record<string, Array<Annotation>>;

export type DatasetAnnotations = {
  z: SliceAnnotations;
  y: SliceAnnotations;
  x: SliceAnnotations;
};

export default Annotation;
