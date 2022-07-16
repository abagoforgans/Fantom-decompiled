contract main {




// =====================  Runtime code  =====================


address stor0;
array of address stor2;

function _fallback() payable {
    revert
}

function addAsset(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'not allowed'
    stor2.length++
    stor2[stor2.length] = arg1
    return 0
}

function getAllPrices() payable {
    if stor2.length:
        mem[128 len 32 * stor2.length] = code.data[992 len 32 * stor2.length]
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        mem[(32 * stor2.length) + 132] = stor2[idx]
        require ext_code.size(0xb24e9420c125242a5ec438bc65e48af1e866ddd)
        call 0x0b24e9420c125242a5ec438bc65e48af1e866ddd.getUnderlyingPrice(address arg1) with:
             gas gas_remaining wei
            args stor2[idx]
        mem[(32 * stor2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < stor2.length
        mem[(32 * idx) + 128] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[(32 * stor2.length) + 192 len floor32(stor2.length)] = mem[128 len floor32(stor2.length)]
    return Array(len=stor2.length, data=mem[128 len floor32(stor2.length)], mem[(32 * stor2.length) + floor32(stor2.length) + 192 len (32 * stor2.length) - floor32(stor2.length)]), 
}



}
