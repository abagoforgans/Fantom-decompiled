contract main {




// =====================  Runtime code  =====================


const WITHDRAWAL_DELAY = 3600


uint32 stor0;
address owner;
uint256 stor0;
address priceOracleAddress;
address sub_36521647Address;
uint256 sub_433fcd91;
uint256 sub_325408ae;
array of uint256 name;
mapping of uint8 stor6;
mapping of uint8 stor7;
array of struct nFT;
mapping of struct sub_3082a402;
uint256 sub_80e5fec0;
uint256 unitPrice;
uint8 sub_29bed128;
uint256 stor13;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020068;

function getUnitPrice() payable {
    return unitPrice
}

function sub_07bfa7a6(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function getName() payable {
    return name[0 len name.length]
}

function sub_29bed128(?) payable {
    return sub_29bed128
}

function sub_3082a402(?) payable {
    require calldata.size - 4 >= 32
    return sub_3082a402[arg1].field_0, sub_3082a402[arg1].field_256, sub_3082a402[arg1].field_512
}

function sub_325408ae(?) payable {
    return sub_325408ae
}

function sub_36521647(?) payable {
    return sub_36521647Address
}

function sub_433fcd91(?) payable {
    return sub_433fcd91
}

function getNFTCount() payable {
    return nFT.length
}

function getNFT(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < nFT.length
    return nFT[arg1].field_0, nFT[arg1].field_256
}

function sub_80e5fec0(?) payable {
    return sub_80e5fec0
}

function getOwner() payable {
    return address(owner)
}

function sub_eb2e011a(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function getPriceOracle() payable {
    return priceOracleAddress
}

function _fallback() payable {
    revert
}

function sub_bb8c7cf1(?) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6452616e646f6d54726164653a20616c6c6f77656420666f72206f776e6572206f6e6c,
                    mem[199 len 29]
    if not stor7[address(arg1)]:
        revert with 0, 'RandomTrade: already denied'
    stor7[address(arg1)] = 0
}

function sub_8c49f478(?) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6452616e646f6d54726164653a20616c6c6f77656420666f72206f776e6572206f6e6c,
                    mem[199 len 29]
    if not stor6[address(arg1)]:
        revert with 0, 'RandomTrade: already denied'
    stor6[address(arg1)] = 0
    emit 0xf36e518b: arg1
}

function setPrice(uint256 arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6452616e646f6d54726164653a20616c6c6f77656420666f72206f776e6572206f6e6c,
                    mem[199 len 29]
    if arg1 == unitPrice:
        revert with 0, 'RandomTrade: same price'
    if sub_29bed128 == arg2:
        revert with 0, 'RandomTrade: same price'
    unitPrice = arg1
    sub_29bed128 = arg2
    emit 0xc0dde471: arg2 << 248, arg2
}

function sub_b0d60178(?) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6452616e646f6d54726164653a20616c6c6f77656420666f72206f776e6572206f6e6c,
                    mem[199 len 29]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7952616e646f6d54726164653a207a65726f2061646472657373206e6f7420616c6c6f7765,
                    mem[201 len 27]
    sub_36521647Address = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6452616e646f6d54726164653a20616c6c6f77656420666f72206f776e6572206f6e6c,
                    mem[199 len 29]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7952616e646f6d54726164653a207a65726f2061646472657373206e6f7420616c6c6f7765,
                    mem[201 len 27]
    address(owner) = arg1
}

function setPriceOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6452616e646f6d54726164653a20616c6c6f77656420666f72206f776e6572206f6e6c,
                    mem[199 len 29]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7952616e646f6d54726164653a207a65726f2061646472657373206e6f7420616c6c6f7765,
                    mem[201 len 27]
    priceOracleAddress = arg1
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if not stor7[msg.sender]:
        revert with 0, 'RandomTrade: caller not allowed'
    if address(owner) != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x7752616e646f6d54726164653a20746f6b656e732061636365707465642066726f6d20746865206f776e6572206f6e6c,
                    mem[212 len 16]
    if block.timestamp >= sub_325408ae:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6552616e646f6d54726164653a2074686520747261646520616c726561647920656e6465,
                    mem[200 len 28]
    nFT.length++
    nFT[nFT.length].field_0 = msg.sender
    storF3F7[stor8.length] = arg3
    sub_80e5fec0++
    emit TokenAdded(msg.sender, arg3);
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function removeToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6452616e646f6d54726164653a20616c6c6f77656420666f72206f776e6572206f6e6c,
                    mem[199 len 29]
    if 0 >= sub_80e5fec0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7752616e646f6d54726164653a206e6f20617661696c61626c65204e4654206c6566,
                    mem[198 len 30]
    require arg1 < nFT.length
    require nFT.length - 1 < nFT.length
    require arg1 < nFT.length
    nFT[arg1].field_0 = nFT[nFT.length - 1].field_0
    require nFT.length - 1 < nFT.length
    require arg1 < nFT.length
    nFT[arg1].field_256 = nFT[nFT.length - 1].field_256
    require nFT.length
    nFT[nFT.length - 1].field_0 = 0
    nFT[nFT.length - 1].field_256 = 0
    nFT.length--
    require ext_code.size(nFT[arg1].field_0)
    call nFT[arg1].field_0.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args this.address, address(owner), nFT[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ce8aad12(?) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6452616e646f6d54726164653a20616c6c6f77656420666f72206f776e6572206f6e6c,
                    mem[199 len 29]
    if stor7[address(arg1)]:
        revert with 0, 'RandomTrade: already allowed'
    if not ext_code.size(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6552616e646f6d54726164653a20636f6e747261637420616464726573732065787065637465,
                    mem[202 len 26]
    staticcall arg1.supportsInterface(bytes4 arg1) with:
            gas gas_remaining wei
           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6552616e646f6d54726164653a206e6f74204552432d37323120636f6c6c656374696f,
                    mem[199 len 29]
    stor7[address(arg1)] = 1
}

function sub_59704d31(?) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6452616e646f6d54726164653a20616c6c6f77656420666f72206f776e6572206f6e6c,
                    mem[199 len 29]
    if not sub_3082a402[arg1].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe52616e646f6d54726164653a20636c6f73656420707572636861736520726571756573,
                    mem[200 len 28]
    sub_3082a402[arg1].field_0 = 0
    sub_3082a402[arg1].field_256 = 0
    sub_3082a402[arg1].field_512 = 0
    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, sub_3082a402[arg1].field_544
    call sub_3082a402[arg1].field_256 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args sub_3082a402[arg1].field_512, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 38, 0x6452616e646f6d54726164653a2070617920746f6b656e207472616e73666572206661696c65, mem[302 len 26]
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        47,
                        0x6552616e646f6d54726164653a2070617920746f6b656e207472616e7366657220646964206e6f7420737563636565,
                        mem[311 len 17]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        38,
                        0x6452616e646f6d54726164653a2070617920746f6b656e207472616e73666572206661696c65,
                        mem[ceil32(return_data.size) + 303 len 26]
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            47,
                            0x6552616e646f6d54726164653a2070617920746f6b656e207472616e7366657220646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 312 len 17]
    sub_80e5fec0++
    emit 0x5ac43bc1: arg1, msg.sender
}

function sub_951f38cf(?) payable {
    require calldata.size - 4 >= 32
    if sub_3082a402[arg1].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6452616e646f6d54726164653a206e6f7420796f757220707572636861736520726571756573,
                    mem[202 len 26]
    if block.timestamp - 3600 <= sub_325408ae:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x7452616e646f6d54726164653a20746865207769746864726177616c206973207374696c6c20636c6f7365,
                    mem[207 len 21]
    sub_3082a402[arg1].field_0 = 0
    sub_3082a402[arg1].field_256 = 0
    sub_3082a402[arg1].field_512 = 0
    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, sub_3082a402[arg1].field_544
    call sub_3082a402[arg1].field_256 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args sub_3082a402[arg1].field_512, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 38, 0x6452616e646f6d54726164653a2070617920746f6b656e207472616e73666572206661696c65, mem[302 len 26]
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        47,
                        0x6552616e646f6d54726164653a2070617920746f6b656e207472616e7366657220646964206e6f7420737563636565,
                        mem[311 len 17]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        38,
                        0x6452616e646f6d54726164653a2070617920746f6b656e207472616e73666572206661696c65,
                        mem[ceil32(return_data.size) + 303 len 26]
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            47,
                            0x6552616e646f6d54726164653a2070617920746f6b656e207472616e7366657220646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 312 len 17]
    sub_80e5fec0++
    emit 0x5ac43bc1: arg1, msg.sender
}

function sub_a3f03687(?) payable {
    require calldata.size - 4 >= 64
    if sub_36521647Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x7952616e646f6d54726164653a20616c6c6f77656420746f20524e47206f7261636c65206f6e6c,
                    mem[203 len 25]
    if not sub_3082a402[arg1].field_512:
        revert with 0, 'RandomTrade: unknown purchase'
    if not nFT.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6452616e646f6d54726164653a206e6f204e4654206c65667420746f2074726164,
                    mem[197 len 31]
    require arg2 % nFT.length < nFT.length
    require nFT.length - 1 < nFT.length
    require arg2 % nFT.length < nFT.length
    nFT[arg2 % nFT.length].field_0 = nFT[nFT.length - 1].field_0
    require nFT.length - 1 < nFT.length
    require arg2 % nFT.length < nFT.length
    nFT[arg2 % nFT.length].field_256 = nFT[nFT.length - 1].field_256
    require nFT.length
    nFT[nFT.length - 1].field_0 = 0
    nFT[nFT.length - 1].field_256 = 0
    nFT.length--
    sub_3082a402[arg1].field_0 = 0
    sub_3082a402[arg1].field_256 = 0
    sub_3082a402[arg1].field_512 = 0
    require ext_code.size(nFT[arg2 % nFT.length].field_0)
    call nFT[arg2 % nFT.length].field_0.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args this.address, sub_3082a402[arg1].field_0, nFT[arg2 % nFT.length].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), sub_3082a402[arg1].field_544
    call sub_3082a402[arg1].field_256 with:
       funct uint32(stor0)
         gas gas_remaining wei
        args sub_3082a402[arg1].field_512, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 38, 0x6452616e646f6d54726164653a2070617920746f6b656e207472616e73666572206661696c65, mem[302 len 26]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
            revert with 0, 
                        32,
                        47,
                        0x6552616e646f6d54726164653a2070617920746f6b656e207472616e7366657220646964206e6f7420737563636565,
                        mem[311 len 17]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        38,
                        0x6452616e646f6d54726164653a2070617920746f6b656e207472616e73666572206661696c65,
                        mem[ceil32(return_data.size) + 303 len 26]
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            47,
                            0x6552616e646f6d54726164653a2070617920746f6b656e207472616e7366657220646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 312 len 17]
}

function getPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor6[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6452616e646f6d54726164653a207468652070617920746f6b656e206e6f7420616c6c6f7765,
                    mem[202 len 26]
    require ext_code.size(priceOracleAddress)
    staticcall priceOracleAddress.0x41976e09 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6452616e646f6d54726164653a207468652070617920746f6b656e2068617320756e6b6e6f776e2076616c75,
                    mem[208 len 20]
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[31 len 1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6452616e646f6d54726164653a207468652070617920746f6b656e2068617320756e6b6e6f776e20646563696d616c,
                    mem[211 len 17]
    if not ext_call.return_data[0]:
        if unitPrice:
            if 10^uint8(ext_call.return_data[0] + ext_call.return_data[32]) * unitPrice / unitPrice != 10^uint8(ext_call.return_data[0] + ext_call.return_data[32]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
        revert with 0, 'SafeMath: division by zero'
    if 10^sub_29bed128 * ext_call.return_data[0] / ext_call.return_data[0] != 10^sub_29bed128:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not unitPrice:
        if 10^sub_29bed128 * ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 10^sub_29bed128 * ext_call.return_data[0]
        if (0 / 10^sub_29bed128 * ext_call.return_data[0]) + 1 < 0 / 10^sub_29bed128 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / 10^sub_29bed128 * ext_call.return_data[0]) + 1)
    if 10^uint8(ext_call.return_data[0] + ext_call.return_data[32]) * unitPrice / unitPrice != 10^uint8(ext_call.return_data[0] + ext_call.return_data[32]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if 10^sub_29bed128 * ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require 10^sub_29bed128 * ext_call.return_data[0]
    if (10^uint8(ext_call.return_data[0] + ext_call.return_data[32]) * unitPrice / 10^sub_29bed128 * ext_call.return_data[0]) + 1 < 10^uint8(ext_call.return_data[0] + ext_call.return_data[32]) * unitPrice / 10^sub_29bed128 * ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return ((10^uint8(ext_call.return_data[0] + ext_call.return_data[32]) * unitPrice / 10^sub_29bed128 * ext_call.return_data[0]) + 1)
}

function sub_9aae1267(?) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6452616e646f6d54726164653a20616c6c6f77656420666f72206f776e6572206f6e6c,
                    mem[199 len 29]
    if stor6[address(arg1)]:
        revert with 0, 'RandomTrade: already allowed'
    if not stor6[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6452616e646f6d54726164653a207468652070617920746f6b656e206e6f7420616c6c6f7765,
                    mem[202 len 26]
    require ext_code.size(priceOracleAddress)
    staticcall priceOracleAddress.0x41976e09 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6452616e646f6d54726164653a207468652070617920746f6b656e2068617320756e6b6e6f776e2076616c75,
                    mem[208 len 20]
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[31 len 1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6452616e646f6d54726164653a207468652070617920746f6b656e2068617320756e6b6e6f776e20646563696d616c,
                    mem[211 len 17]
    if not ext_call.return_data[0]:
        if unitPrice:
            if 10^uint8(ext_call.return_data[0] + ext_call.return_data[32]) * unitPrice / unitPrice != 10^uint8(ext_call.return_data[0] + ext_call.return_data[32]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
        revert with 0, 'SafeMath: division by zero'
    if 10^sub_29bed128 * ext_call.return_data[0] / ext_call.return_data[0] != 10^sub_29bed128:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not unitPrice:
        if 10^sub_29bed128 * ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 10^sub_29bed128 * ext_call.return_data[0]
        if (0 / 10^sub_29bed128 * ext_call.return_data[0]) + 1 < 0 / 10^sub_29bed128 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 >= (0 / 10^sub_29bed128 * ext_call.return_data[0]) + 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        56,
                        0x6e52616e646f6d54726164653a207468652070617920746f6b656e206e6f7420737570706f72746564206279207072696365206f7261636c,
                        mem[220 len 8]
    else:
        if 10^uint8(ext_call.return_data[0] + ext_call.return_data[32]) * unitPrice / unitPrice != 10^uint8(ext_call.return_data[0] + ext_call.return_data[32]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 10^sub_29bed128 * ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 10^sub_29bed128 * ext_call.return_data[0]
        if (10^uint8(ext_call.return_data[0] + ext_call.return_data[32]) * unitPrice / 10^sub_29bed128 * ext_call.return_data[0]) + 1 < 10^uint8(ext_call.return_data[0] + ext_call.return_data[32]) * unitPrice / 10^sub_29bed128 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 >= (10^uint8(ext_call.return_data[0] + ext_call.return_data[32]) * unitPrice / 10^sub_29bed128 * ext_call.return_data[0]) + 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        56,
                        0x6e52616e646f6d54726164653a207468652070617920746f6b656e206e6f7420737570706f72746564206279207072696365206f7261636c,
                        mem[220 len 8]
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[31 len 1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6452616e646f6d54726164653a207468652070617920746f6b656e2068617320756e6b6e6f776e20646563696d616c,
                    mem[211 len 17]
    stor6[address(arg1)] = 1
    emit 0x78856711: arg1
}

function purchase(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < sub_433fcd91:
        revert with 0, 'RandomTrade: the trade not open'
    if block.timestamp >= sub_325408ae:
        revert with 0, 'RandomTrade: the trade is closed'
    if 0 >= sub_80e5fec0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x7452616e646f6d54726164653a206e6f204e465420617661696c61626c6520666f722070757263686173,
                    mem[206 len 22]
    if not stor6[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6452616e646f6d54726164653a207468652070617920746f6b656e206e6f7420616c6c6f7765,
                    mem[202 len 26]
    require ext_code.size(priceOracleAddress)
    staticcall priceOracleAddress.0x41976e09 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6452616e646f6d54726164653a207468652070617920746f6b656e2068617320756e6b6e6f776e2076616c75,
                    mem[208 len 20]
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[31 len 1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6452616e646f6d54726164653a207468652070617920746f6b656e2068617320756e6b6e6f776e20646563696d616c,
                    mem[211 len 17]
    if not ext_call.return_data[0]:
        if unitPrice:
            if 10^uint8(ext_call.return_data[0] + ext_call.return_data[32]) * unitPrice / unitPrice != 10^uint8(ext_call.return_data[0] + ext_call.return_data[32]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
        revert with 0, 'SafeMath: division by zero'
    if 10^sub_29bed128 * ext_call.return_data[0] / ext_call.return_data[0] != 10^sub_29bed128:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not unitPrice:
        if 10^sub_29bed128 * ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 10^sub_29bed128 * ext_call.return_data[0]
        if (0 / 10^sub_29bed128 * ext_call.return_data[0]) + 1 < 0 / 10^sub_29bed128 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 >= (0 / 10^sub_29bed128 * ext_call.return_data[0]) + 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x7952616e646f6d54726164653a20746865207072696365206d757374206265206e6f6e2d7a6572,
                        mem[203 len 25]
        require ext_code.size(arg1)
        staticcall arg1.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (0 / 10^sub_29bed128 * ext_call.return_data[0]) + 1 > ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x7452616e646f6d54726164653a207468652070617920746f6b656e20616c6c6f77616e636520746f6f206c6f,
                        mem[208 len 20]
        stor13++
        if sub_3082a402[Mask(160, 96, msg.sender) >> 96][arg1][stor13 + 1].field_512:
            revert with 0, 
                        32,
                        48,
                        0x6f52616e646f6d54726164653a2070656e64696e67207075726368617365206f76657277726974652072656a65637465,
                        mem[316 len 16]
        sub_80e5fec0--
        mem[332 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, (0 / 10^sub_29bed128 * ext_call.return_data[0]) + 1) >> 32
        mem[456 len 4] = Mask(32, 64, (0 / 10^sub_29bed128 * ext_call.return_data[0]) + 1) >> 64
        call arg1 with:
             gas gas_remaining wei
            args Mask(224, 32, (0 / 10^sub_29bed128 * ext_call.return_data[0]) + 1) << 480, mem[428 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            38,
                            0x6452616e646f6d54726164653a2070617920746f6b656e207472616e73666572206661696c65,
                            mem[438 len 18],
                            Mask(32, 64, (0 / 10^sub_29bed128 * ext_call.return_data[0]) + 1) >> 64,
                            mem[460 len 4]
            if not Mask(160, 96, msg.sender) >> 96, Mask(96, 64, arg1) >> 64:
                revert with 0, 
                            32,
                            47,
                            0x6552616e646f6d54726164653a2070617920746f6b656e207472616e7366657220646964206e6f7420737563636565,
                            mem[447 len 9],
                            Mask(32, 64, (0 / 10^sub_29bed128 * ext_call.return_data[0]) + 1) >> 64,
                            mem[460 len 4]
        else:
            mem[364 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            38,
                            0x6452616e646f6d54726164653a2070617920746f6b656e207472616e73666572206661696c65,
                            mem[ceil32(return_data.size) + 439 len 26]
            if return_data.size:
                require return_data.size >= 32
                if not mem[364]:
                    revert with 0, 
                                32,
                                47,
                                0x6552616e646f6d54726164653a2070617920746f6b656e207472616e7366657220646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 448 len 17]
        sub_3082a402[Mask(160, 96, msg.sender) >> 96][arg1][stor13 + 1].field_0 = msg.sender or Mask(96, 160, sub_3082a402[Mask(160, 96, msg.sender) >> 96][arg1][stor13 + 1].field_0)
        sub_3082a402[Mask(160, 96, msg.sender) >> 96][arg1][stor13 + 1].field_512 = (0 / 10^sub_29bed128 * ext_call.return_data[0]) + 1
        sub_3082a402[Mask(160, 96, msg.sender) >> 96][arg1][stor13 + 1].field_256 = arg1
        require ext_code.size(sub_36521647Address)
        call sub_36521647Address.0xbd313d78 with:
             gas gas_remaining wei
            args sha3(Mask(160, 96, msg.sender) >> 96, arg1, stor13 + 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x35cd9b60: sha3(Mask(160, 96, msg.sender) >> 96, arg1, stor13 + 1), address(arg1), (0 / 10^sub_29bed128 * ext_call.return_data[0]) + 1, msg.sender
    else:
        if 10^uint8(ext_call.return_data[0] + ext_call.return_data[32]) * unitPrice / unitPrice != 10^uint8(ext_call.return_data[0] + ext_call.return_data[32]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 10^sub_29bed128 * ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 10^sub_29bed128 * ext_call.return_data[0]
        if (10^uint8(ext_call.return_data[0] + ext_call.return_data[32]) * unitPrice / 10^sub_29bed128 * ext_call.return_data[0]) + 1 < 10^uint8(ext_call.return_data[0] + ext_call.return_data[32]) * unitPrice / 10^sub_29bed128 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 >= (10^uint8(ext_call.return_data[0] + ext_call.return_data[32]) * unitPrice / 10^sub_29bed128 * ext_call.return_data[0]) + 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x7952616e646f6d54726164653a20746865207072696365206d757374206265206e6f6e2d7a6572,
                        mem[203 len 25]
        require ext_code.size(arg1)
        staticcall arg1.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (10^uint8(ext_call.return_data[0] + ext_call.return_data[32]) * unitPrice / 10^sub_29bed128 * ext_call.return_data[0]) + 1 > ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x7452616e646f6d54726164653a207468652070617920746f6b656e20616c6c6f77616e636520746f6f206c6f,
                        mem[208 len 20]
        stor13++
        if sub_3082a402[Mask(160, 96, msg.sender) >> 96][arg1][stor13 + 1].field_512:
            revert with 0, 
                        32,
                        48,
                        0x6f52616e646f6d54726164653a2070656e64696e67207075726368617365206f76657277726974652072656a65637465,
                        mem[316 len 16]
        sub_80e5fec0--
        mem[332 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, (10^uint8(ext_call.return_data[0] + ext_call.return_data[32]) * unitPrice / 10^sub_29bed128 * ext_call.return_data[0]) + 1) >> 32
        mem[456 len 4] = Mask(32, 64, (10^uint8(ext_call.return_data[0] + ext_call.return_data[32]) * unitPrice / 10^sub_29bed128 * ext_call.return_data[0]) + 1) >> 64
        call arg1 with:
             gas gas_remaining wei
            args Mask(224, 32, (10^uint8(ext_call.return_data[0] + ext_call.return_data[32]) * unitPrice / 10^sub_29bed128 * ext_call.return_data[0]) + 1) << 480, mem[428 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            38,
                            0x6452616e646f6d54726164653a2070617920746f6b656e207472616e73666572206661696c65,
                            mem[438 len 18],
                            Mask(32, 64, (10^uint8(ext_call.return_data[0] + ext_call.return_data[32]) * unitPrice / 10^sub_29bed128 * ext_call.return_data[0]) + 1) >> 64,
                            mem[460 len 4]
            if not Mask(160, 96, msg.sender) >> 96, Mask(96, 64, arg1) >> 64:
                revert with 0, 
                            32,
                            47,
                            0x6552616e646f6d54726164653a2070617920746f6b656e207472616e7366657220646964206e6f7420737563636565,
                            mem[447 len 9],
                            Mask(32, 64, (10^uint8(ext_call.return_data[0] + ext_call.return_data[32]) * unitPrice / 10^sub_29bed128 * ext_call.return_data[0]) + 1) >> 64,
                            mem[460 len 4]
        else:
            mem[364 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            38,
                            0x6452616e646f6d54726164653a2070617920746f6b656e207472616e73666572206661696c65,
                            mem[ceil32(return_data.size) + 439 len 26]
            if return_data.size:
                require return_data.size >= 32
                if not mem[364]:
                    revert with 0, 
                                32,
                                47,
                                0x6552616e646f6d54726164653a2070617920746f6b656e207472616e7366657220646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 448 len 17]
        sub_3082a402[Mask(160, 96, msg.sender) >> 96][arg1][stor13 + 1].field_0 = msg.sender or Mask(96, 160, sub_3082a402[Mask(160, 96, msg.sender) >> 96][arg1][stor13 + 1].field_0)
        sub_3082a402[Mask(160, 96, msg.sender) >> 96][arg1][stor13 + 1].field_512 = (10^uint8(ext_call.return_data[0] + ext_call.return_data[32]) * unitPrice / 10^sub_29bed128 * ext_call.return_data[0]) + 1
        sub_3082a402[Mask(160, 96, msg.sender) >> 96][arg1][stor13 + 1].field_256 = arg1
        require ext_code.size(sub_36521647Address)
        call sub_36521647Address.0xbd313d78 with:
             gas gas_remaining wei
            args sha3(Mask(160, 96, msg.sender) >> 96, arg1, stor13 + 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x35cd9b60: sha3(Mask(160, 96, msg.sender) >> 96, arg1, stor13 + 1), address(arg1), (10^uint8(ext_call.return_data[0] + ext_call.return_data[32]) * unitPrice / 10^sub_29bed128 * ext_call.return_data[0]) + 1, msg.sender
}



}
