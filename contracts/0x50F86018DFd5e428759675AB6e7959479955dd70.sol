contract main {




// =====================  Runtime code  =====================


uint32 stor0;
address owner;
uint256 stor0;
address nativeAddress;
array of address stor2;
uint256 interval;

function native() payable {
    return nativeAddress
}

function owner() payable {
    return address(owner)
}

function interval() payable {
    return interval
}

function _fallback() payable {
    revert
}

function setHarvestInterval(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, '!owner'
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, '!owner'
    address(owner) = arg1
}

function addStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, '!owner'
    stor2.length++
    stor2[stor2.length] = arg1
}

function removeStrategy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, '!owner'
    require arg1 < stor2.length
    stor2[arg1] = 0
}

function sub_bd84db94(?) payable {
    if address(owner) != msg.sender:
        revert with 0, '!owner'
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        mem[96] = 0x4641257d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor2[idx])
        call stor2[idx].0x4641257d with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function claimFees() payable {
    if address(owner) != msg.sender:
        revert with 0, '!owner'
    require ext_code.size(nativeAddress)
    staticcall nativeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(nativeAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0 len 28]
    mem[356 len 0] = 0
    call nativeAddress with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[356 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0]
        if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor0):
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[402 len 22]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 
                        32,
                        42,
                        0x6c5361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                        mem[270 len 22],
                        Mask(80, 0, ext_call.return_data[0 len 28])
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
}



}
