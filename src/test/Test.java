package test;

public class Test {
    public static void main(String[] args) {
            new Test().test();
    }

    int i = 0;
    int j = 0;
    int[] array = {1,2,3,4,16};
    public void test(){
        i++;
        if (i == 3){
            System.out.println(j);
            return;
        }
        for (int k = 0; k < array.length; k++){
            if (array[k] > 13){
                System.out.println("数组值"+array[k]);
            }else if (j==0){
                j=1;
                test();
                j=0;
                System.out.println("手机结果"+array[k]);
            }
        }
    }
}

