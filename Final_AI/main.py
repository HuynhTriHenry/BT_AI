
from tkinter import filedialog
from tkinter import *
from PIL import ImageTk, Image
from keras.models import load_model
import numpy as np
from keras.utils.image_utils import load_img, img_to_array
model = load_model('train.h5')
def open():
    myLabel18.configure(text="")
    global filename
    filename = filedialog.askopenfilename (initialdir="", title ="select A file", filetypes =(("jpg files", "*.jpg"),("all file","*.*")))
    global image
    image= Image.open(filename)
    image = image.resize((280,280))
    global my_image
    my_image = ImageTk.PhotoImage(image)
    global L1
    L1 = Label(root, image=my_image)
    L1.place(x=480, y=230)

# Tạo cửa sổ giao diện chính
root = Tk()
root.title("VEHICLE IDENTIFICATION")
root.geometry("800x600")

lgtruong = ImageTk.PhotoImage(Image.open("logotruong.png"))
lblgtruong = Label(image=lgtruong)
lblgtruong.place(x=20, y=5)

lgkhoa = ImageTk.PhotoImage(Image.open("logokhoa.png"))
lblgkhoa = Label(image=lgkhoa)
lblgkhoa.place(x=680, y=10)

def recognition():
    img = load_img(filename, target_size=(128, 128))
    img = img_to_array(img)
    img = img.reshape(1, 128, 128, 3)
    img = img.astype('float32')
    img = img / 255
    Custom = np.argmax(model.predict(img), axis=-1)
    if (Custom == 1):
        myLabel18.configure(text=" Xe Máy")
    if (Custom == 2):
        myLabel18.configure(text=" Xe Hơi")
    if (Custom == 3):
        myLabel18.configure(text=" Xe Đạp")
    if (Custom == 4):
        myLabel18.configure(text=" Xe Tải")

B1 = Button(root, text="Open File", bg='#37b1bc', cursor="hand2", font=("Calisto MT", 9, "bold"), height=4, width=18,command=open)
B1.place(x=50, y=300)
B2 = Button(root, text="Predict", bg='#37b1bc', cursor="hand2", font=("Calisto MT", 9, "bold"), height=4, width=18,command=recognition)
B2.place(x=50, y=400)

myLabel4 = Label(root, text="VEHICLE IDENTIFICATION", font="Arial 19 bold", fg="red")
myLabel4.place(x = 260, y = 100)
myLabel3 = Label(root, text="SVTH : Huỳnh Trọng Trí", font="Arial 15 bold")
myLabel3.place(x = 10, y = 220,anchor = W)
myLabel2 = Label(root, text="MSSV : 20146209", font="Arial 15 bold")
myLabel2.place(x = 10, y = 250,anchor = W)
myLabel5 = Label(root, text="Subject: Artificial Intelligence", font="Arial 15 bold")
myLabel6 = Label(root, text="GVHD : PGS. Nguyễn Trường Thịnh", font="Arial 15 bold")
myLabel5.place(x = 10, y = 160,anchor = W)
myLabel6.place(x = 10, y = 190,anchor = W)

myLabel18 = Label(root,text= "", font="Arial 19 bold", fg="red")
myLabel18.place(x = 580, y = 530)
root.mainloop()



