from flask import Flask

app = Flask(__name__)

from cnocr import CnOcr
ocr = CnOcr()  # 所有参数都使用默认值


@app.route('/')
def hello():
  img_fp = './aa.jpeg'
  out = ocr.ocr(img_fp)
  print(out)
  # 绘制文本框和文本
  textArr=''
  for result in out:
      text = result['text']
      score = result['score']
      position = result['position']
    #   print('text',text)
      textArr=textArr+text

  return textArr




if __name__ == '__main__':
  print('起送费礼物')
  app.run(host='0.0.0.0', port=5000, debug=True)
