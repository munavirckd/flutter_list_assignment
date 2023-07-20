# Reviews 


1. Incorrect constructor syntax:
 
 -The constructors in the ListWidget and ListItemWidget classes have incorrect syntax. 
 - is not valid and will cause a compilation error.
 The correct syntax is 

 ListWidget   ({Key? key}) : super(key: key) and ListItemWidget({Key? key}): super(key: key).

 -The constructors should call the super constructor with the key parameter.  the super keyword is used only inside the constructor's body to call the superclass's constructor or methods.

2. No need for loop 

 - we can remove unneccessary return list

 -  ListView.builder can directly retun list

 -return ListView.builder(
      itemCount: 101,
      itemBuilder: (context, index) => ListItemWidget(),
    );

3.Use initState 

- the count variable should be initialized in the initState 

- its better than directly in the state class

- @override
  void initState() {
    super.initState();
    count = 0;
  }

4. No need var keyword

 -can use int key word

5. Use late keyword

- In the ListItemWidget class, its better to define the count variable with the late keyword.

- since it will be initialized later in the build method.


6. Code reformatted 

 -Some parts of the code are not formatted properly.


