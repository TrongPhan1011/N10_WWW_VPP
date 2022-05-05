
var sanPhamApi = 'http://localhost:3000/sanPham';
var numFormat = Intl.NumberFormat();

function startApp(){
    getDSSanPham(renderSanPhamNoiBat )
}
startApp();

function getDSSanPham(callback){
    fetch(sanPhamApi)
        .then(function(response){
            return response.json();
        })
        .then(callback);
}

function renderSanPham(viTri,listSanPham){
    let render = listSanPham.map(function(sanPham){
        
        let giaSP = numFormat.format(sanPham.giaSP);
        return `
        <div class="col-3 pt-0 p-2 d-flex justify-content-around">
            <div class="card pb-2 vpp-bd-hover-pink vpp-bd-btn" style="width:80%;">
                <div class="img-sp">
                    <img class="card-img-top vpp-bd-radius-top" src="${sanPham.dsAnhSP[0]}" alt="Card image" style="width:100%; height: 9vw;">
                </div>
                <div class="card-body p-0">
                    <div class="p-2" style ="min-height: 70px">
                        <a href="#" class="card-title vpp-link"><h5>${sanPham.tenSP}</h5></a>
                    
                    </div>
                    <p class="card-text text-danger fs-5 fw-bold">${giaSP}</p>
                    <a href="#" class="btn vpp-btn vpp-bd-btn">Xem chi tiết</a>
                </div>
            </div>
        </div>
        `
    });
    
    let renderString ='';
    for(let i =0; i< 4; i++){
        renderString += ' '+ render[i];
    }
    viTri.innerHTML = renderString;

    
}


function renderSanPhamNoiBat(listSanPhamNoiBat){
    listSanPhamNoiBat.sort(function(o1,o2){
        return o2.slDaBan - o1.slDaBan;
    })
    let sanPhamNoiBat  = document.getElementById('sanPhamNoiBat');
    renderSanPham(sanPhamNoiBat,listSanPhamNoiBat);
    
}

