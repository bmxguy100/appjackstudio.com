---
title: "Cats and Dogs"
date: 2019-07-17
---
This project is a AI that can tell the difference between a cat and a dog. Upload an image, press the `ANALYZE IMAGE` button, and the AI will determine if it thinks the photo contains a cat or a dog.

<iframe src="/embed/cats-and-dogs/index.html" style="width: 100%; height: 325px"></iframe>

The first step of any machine learning project is finding a good dataset. I ended up settling on [this one from Microsoft/Kaggle](https://www.microsoft.com/en-us/download/details.aspx?id=54765). Next I had to design a model. I ended up creating a Convolutional Neural Network optimized with the [AMSGrad varient of ADAM](https://keras.io/optimizers/#adam). It was made using Keras, Tensorflow, and Python. After finding a good set of hyperparameters, I trained it on my GPU until I got about 90% accuracy.

I created the web app using the [Vuetify](https://vuetifyjs.com/en/) framework for [Vue](https://vuejs.org). I ran the model using [Tensorflow.js](https://www.tensorflow.org/js) with the WebGL backend.

The source code for this project is available on [my GitHub](https://github.com/bmxguy100/cats-and-dogs)
