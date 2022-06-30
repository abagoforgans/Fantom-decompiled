contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Not the owner'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_aedf5912(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require ('cd', 4).length <= test266151307()
    if ('cd', 4).length:
        mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        if eth.balance(cd[((32 * idx) + cd[4] + 36)]) <= cd[36]:
            mem[(32 * idx) + 128] = cd[36] - eth.balance(cd[((32 * idx) + cd[4] + 36)])
        else:
            mem[(32 * idx) + 128] = 0
        idx = idx + 1
        continue 
    mem[(32 * ('cd', 4).length) + 224 len floor32(('cd', 4).length)] = mem[128 len floor32(('cd', 4).length)]
    return 64, 
           0,
           ('cd', 4).length,
           mem[128 len floor32(('cd', 4).length)],
           mem[(32 * ('cd', 4).length) + floor32(('cd', 4).length) + 224 len (32 * ('cd', 4).length) - floor32(('cd', 4).length)]
}

function sub_95c4fb4d(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require ('cd', 4).length <= test266151307()
    if ('cd', 4).length:
        mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        if eth.balance(cd[((32 * idx) + cd[4] + 36)]) <= cd[36]:
            mem[(32 * idx) + 128] = cd[36] - eth.balance(cd[((32 * idx) + cd[4] + 36)])
        else:
            mem[(32 * idx) + 128] = 0
        idx = idx + 1
        continue 
    if 0 > eth.balance(this.address):
        revert with 0, 'Not enough native tokens'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        if mem[(32 * idx) + 128] > 0:
            require idx < ('cd', 4).length
            require idx < ('cd', 4).length
            call address(cd[((32 * idx) + cd[4] + 36)]) with:
               value mem[(32 * idx) + 128] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
