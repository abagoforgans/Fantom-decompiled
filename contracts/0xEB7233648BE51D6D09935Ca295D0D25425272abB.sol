contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;
address stor2;

function _fallback() payable {
    revert
}

function withdraw() {
    idx = 0
    while idx < stor0.length:
        if idx >= stor1.length:
            revert with 'NH{q', 50
        mem[0] = 1
        if eth.balance(this.address) and stor1[idx].field_0 > -1 / eth.balance(this.address):
            revert with 'NH{q', 17
        call stor0[idx].field_0 with:
           value eth.balance(this.address) * stor1[idx].field_0 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with 0, 'Payment failed.'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function getShares() {
    if stor1.length:
        mem[128] = uint256(stor1.field_0)
        idx = 128
        s = 0
        while (32 * stor1.length) + 96 > idx:
            mem[idx + 32] = stor1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor1.length, data=mem[128 len 32 * stor1.length])
    mem[(32 * stor1.length) + 128] = 32
    mem[(32 * stor1.length) + 160] = stor1.length
    mem[(32 * stor1.length) + 192 len 32 * stor1.length] = mem[128 len 32 * stor1.length]
    return memory
      from (32 * stor1.length) + 128
       len (96 * stor1.length) + 64
}

function sub_8eda7737(?) {
    mem[64] = (32 * stor0.length) + 128
    mem[96] = stor0.length
    if not stor0.length:
        mem[(32 * stor0.length) + 128] = 32
        mem[(32 * stor0.length) + 160] = stor0.length
        idx = 0
        s = 128
        t = (32 * stor0.length) + 192
        while idx < stor0.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor0.length) + 128
           len (96 * stor0.length) + 64
    mem[128] = address(stor0.field_0)
    idx = 128
    s = 0
    while (32 * stor0.length) + 96 > idx:
        mem[idx + 32] = stor0[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor0.length) + 128] = 32
    mem[(32 * stor0.length) + 160] = stor0.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor0.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor0.length) + -mem[64] + 192
}

function sub_dbff83be(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor2 != msg.sender:
        revert with 0, 'What are you thinking?'
    stor1.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor1.length > idx:
            stor1[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            stor1[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor1.length > idx:
            stor1[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_ae4faafa(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor2 != msg.sender:
        revert with 0, 'What are you thinking?'
    stor0.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor0.length > idx:
            stor0[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            stor0[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor0.length > idx:
            stor0[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_9bdedea5(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _14 = mem[(32 * idx) + 128]
        mem[floor32(('cd', 36).length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 36).length) + 101] = this.address
        mem[floor32(('cd', 36).length) + 133] = stor2
        mem[floor32(('cd', 36).length) + 165] = _14
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), stor2, _14
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function withdrawTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    while idx < stor0.length:
        if idx >= stor1.length:
            revert with 'NH{q', 50
        mem[0] = 1
        if ext_call.return_data[0] and stor1[idx].field_0 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = stor0[idx].field_0
        mem[mem[64] + 36] = ext_call.return_data[0] * stor1[idx].field_0 / 100
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args stor0[idx].field_0, ext_call.return_data[0] * stor1[idx].field_0 / 100
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _17 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_17] == bool(mem[_17])
        if not mem[_17]:
            revert with 0, 'Payment failed.'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
