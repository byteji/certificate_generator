

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
  // ฝั่งฟ้อน ไป ในเทมเพลต 
  const SanChezFont  = await pdfDoc.embedFont(fontBytes);

   // 
   const pages = pdfDoc.getPages();
   const firstPage = pages[0];
 
 
  
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

