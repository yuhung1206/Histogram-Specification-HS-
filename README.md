# Histogram-Specification(HS)
Apply histogram-specification method to achieve contrast enhancement.

In this study,
to enhance the contrast of the input picture, the parameters of histogram are self-defined as:  

![image](https://user-images.githubusercontent.com/78803926/132358896-2edc356d-14fa-4cd3-8771-e8e9e59e3d62.png)
![image](https://user-images.githubusercontent.com/78803926/132361517-4690261a-a038-40ed-9d2a-448efe7f7316.png)


## Implementation process
  1. Calculate the PDF and CDF of original data
  2. According to the desired histogram, construct the desired PDF and CDF
  3. With the two CDFs, we could build the mapping between input ![image](https://user-images.githubusercontent.com/78803926/132360354-eff12a65-9838-4501-bb6b-2c899f845758.png) and output ![image](https://user-images.githubusercontent.com/78803926/132360394-9fcc451b-0597-4e98-a0bb-eba947fc59d6.png) via ![image](https://user-images.githubusercontent.com/78803926/132360467-7a482538-de74-4055-85a9-229f79da84f2.png)
  4. Utilize the mapping function and the original data to obtain the output data
  5. Export those new pixels as an image


### Results
- original and output histograms (after HS operation)  

  From the two pictures below, we could directly find that the output histogram is parser than the original histogram. Apart from   that, we could also discover that more pixels concentrate near zero gray level in the output histogram than in the original one, which would probably make the dark area darker. Additionally, the increase of pixels also take place around 200~250 gray level, revealing that the bright area would possibly become brighter. I suppose that the effects are closely associated with the desired histogram.
  ![image](https://user-images.githubusercontent.com/78803926/132361149-bcdd02a9-0359-4bdd-9cd2-7180b2f697d4.png)
  ![image](https://user-images.githubusercontent.com/78803926/132361250-b4c5f15c-babe-4ff6-bf36-5d0b0eb540a6.png)
  
  
- 


