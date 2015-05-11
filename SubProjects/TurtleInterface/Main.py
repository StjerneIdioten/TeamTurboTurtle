import time
import serial

# configure the serial connections (the parameters differs on the device you are connecting to)
while 1:
    print("Input the serial port" +
          '\r\n(Type "exit" to leave the application)')
    inputReceived = input(">> ")

    if inputReceived in ['Exit','exit']:
        exit()

    try:
        ser = serial.Serial(
        port=inputReceived,
        baudrate=9600,
        parity=serial.PARITY_NONE,
        stopbits=serial.STOPBITS_ONE,
        bytesize=serial.EIGHTBITS
        )
        break
    except serial.SerialException :
        print("Could not open serial connection")

while 1:

    print('\r\nCommand table:\r\n' +
      'Start\r\n' +
      'Stop\r\n' +
      'Exit - To leave the application.')

    # get keyboard input
    inputReceived = input(">> ")

    if inputReceived in ['Start','start']:
        message = "You must provide an integer in the interval 0-100!"
        print('Enter the motor power %\r\nInsert "exit" to return to the command menu')
        while 1:

            inputReceived = input(">> ")

            if inputReceived == 'exit':
                break

            try:
                inputReceived = int(inputReceived)
            except ValueError:
                print(message)
                continue

            if inputReceived in range(0,100):
                command = bytearray("\x55\x10" + chr(inputReceived), 'UTF-8')
                ser.write(command)
                print("Car started with %d%% power!" % inputReceived)
            else:
                print(message)

    elif inputReceived in ['Stop','stop']:
        command = bytearray("\x55\x11\x00", 'UTF-8')
        ser.write(command)
        print("Car stopped!")

    elif inputReceived in ['Exit','exit']:
        ser.close()
        exit()





