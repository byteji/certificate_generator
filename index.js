

console.log("hello")
const userName = document.getElementById("name"); //  เก็บชื่อ 
const submitBtn = document.getElementById("submitBtn"); // 

const { PDFDocument, rgb, degrees } = PDFLib;


submitBtn.addEventListener("click", () => {
    const val =userName.value;
    if (val.trim() !== "" && userName.checkValidity()) {
        // console.log(val);
        generatePDF(val);
      } else {
        userName.reportValidity();
      }
});
 // ดึงเทมเพลต ที่สร้าง 
const generatePDF = async (name) => {
    const existingPdfBytes = await fetch("./template/Certificatetest1.pdf").then((res) =>
      res.arrayBuffer()
    );

    // Load a PDFDocument from the existing PDF bytes
    const pdfDoc = await PDFDocument.load(existingPdfBytes);
    pdfDoc.registerFontkit(fontkit);

    
  //get font
  const fontBytes = await fetch("Sanchez-Regular.ttf").then((res) =>
  res.arrayBuffer()
);
  // Embed our custom font in the document ฝั่งฟ้อน ไป ในเทมเพลต 
  const SanChezFont  = await pdfDoc.embedFont(fontBytes);

   // Get the first page of the document ในหน้าแรก 
   const pages = pdfDoc.getPages();
   const firstPage = pages[0];
 
   // Draw a string of text diagonally across the first page
  //  firstPage.drawText(name, {
  //   x: 300, //แกนนอน
  //   y: 270,  //แกนตั้ง
  //   size: 20, //ขนาดฟ้อน
  //   font: SanChezFont ,  // ฟ้อน
  //   color: rgb(0.2, 0.84, 0.67),    // สี
  // });

  
   firstPage.drawText(name, {
     x: 302,
     y: 272,
     size: 50,
     font: SanChezFont ,
     color: rgb(0,0,0),
   });
 



  // Serialize the PDFDocument to bytes (a Uint8Array) เซฟลงในเครื่อง 
  const pdfDataUri = await pdfDoc.saveAsBase64({ dataUri: true });
  saveAs(pdfDataUri,"Ce_Mooc003.pdf")  // ชื่อไฟล์ที่save  
};

