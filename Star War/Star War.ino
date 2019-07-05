const int trig = 9;    // 触发信号
const int echo = 10;    // 反馈信号

void setup() {
  pinMode(echo, INPUT);
  pinMode(trig, OUTPUT);
 //触发端口设置为输出，反馈端口设置为输入
  Serial.begin(9600);
}

void loop() {
  long IntervalTime =0; //
  while (1) {
      digitalWrite(trig, 1);//置高电平
      delayMicroseconds(10);//延时10us
      digitalWrite(trig, 0);//设为低电平
      IntervalTime = pulseIn(echo, HIGH); //用自带的函数采样反馈的高电平的宽度，单位us
 
    int lS = IntervalTime/ 58.0; //使用浮点计算出距离，单位cm
    //Serial.println(my);
    Serial.write(lS);//通过串口输出距离数值
    delay(100);//延时间隔决定采样的频率，根据实际需要变换参数
  }
}
