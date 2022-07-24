contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
array of struct stor1;
array of struct stor2;

function _fallback() payable {
    revert
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_ef7bb870(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor1[address(arg1)].field_0:
        mem[128] = stor1[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * stor1[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = stor1[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor1[address(arg1)].field_0, data=mem[128 len 32 * stor1[address(arg1)].field_0])
    mem[(32 * stor1[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor1[address(arg1)].field_0) + 160] = stor1[address(arg1)].field_0
    mem[(32 * stor1[address(arg1)].field_0) + 192 len 32 * stor1[address(arg1)].field_0] = mem[128 len 32 * stor1[address(arg1)].field_0]
    return memory
      from (32 * stor1[address(arg1)].field_0) + 128
       len (96 * stor1[address(arg1)].field_0) + 64
}

function sub_2c0a62c0(?) payable {
    mem[64] = (32 * stor2.length) + 128
    mem[96] = stor2.length
    if not stor2.length:
        mem[(32 * stor2.length) + 128] = 32
        mem[(32 * stor2.length) + 160] = stor2.length
        idx = 0
        s = 128
        t = (32 * stor2.length) + 192
        while idx < stor2.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor2.length) + 128
           len (96 * stor2.length) + 64
    mem[128] = address(stor2.field_0)
    idx = 128
    s = 0
    while (32 * stor2.length) + 96 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor2.length) + 128] = 32
    mem[(32 * stor2.length) + 160] = stor2.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor2.length) + -mem[64] + 192
}

function deposit(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    idx = 0
    s = 1
    while idx < stor2.length:
        mem[0] = 2
        if idx == -1:
            revert with 'NH{q', 17
        if stor2[idx].field_0 != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 0
        continue 
    if s:
        stor2.length++
        stor2[stor2.length].field_0 = arg1
    stor1[address(arg1)].field_0++
    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = arg3
    stor0[address(arg1)][arg3].field_0 = block.number
    stor0[address(arg1)][arg3].field_256 = stor1[address(arg1)].field_0
    stor0[address(arg1)][arg3].field_512 = msg.sender
    require ext_code.size(arg1)
    call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg2), address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x643c092d: address(arg1), arg3, arg2
}

function sub_3cf322ec(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    idx = 0
    s = 0
    while idx < stor1[address(arg1)].field_0:
        if idx >= stor1[address(arg1)].field_0:
            revert with 'NH{q', 50
        if stor0[address(arg1)][stor1[address(arg1)][idx].field_0].field_512 != address(arg2):
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = address(arg1)
            mem[32] = 1
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = address(arg1)
        mem[32] = 1
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[96] = s
    mem[64] = (32 * s) + 128
    if s:
        mem[128 len 32 * s] = call.data[calldata.size len 32 * s]
    mem[0] = address(arg1)
    mem[32] = 1
    idx = 0
    t = 0
    while idx < stor1[address(arg1)].field_0:
        if idx >= stor1[address(arg1)].field_0:
            revert with 'NH{q', 50
        mem[0] = stor1[address(arg1)][idx].field_0
        mem[32] = sha3(address(arg1), 0)
        if stor0[address(arg1)][stor1[address(arg1)][idx].field_0].field_512 != address(arg2):
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = address(arg1)
            mem[32] = 1
            idx = idx + 1
            t = t
            continue 
        if t >= s:
            revert with 'NH{q', 50
        mem[(32 * t) + 128] = stor1[address(arg1)][idx].field_0
        if t == -1:
            revert with 'NH{q', 17
        if t + 1 != s:
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = address(arg1)
            mem[32] = 1
            idx = idx + 1
            t = t + 1
            continue 
        mem[(32 * s) + 128] = 32
        mem[(32 * s) + 160] = s
        t = 0
        u = 128
        v = mem[64] + 64
        while t < s:
            mem[v] = mem[u]
            mem[0] = address(arg1)
            mem[32] = 1
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        return memory
          from mem[64]
           len (64 * s) + -mem[64] + 192
    return Array(len=s, data=mem[128 len 32 * s])
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0[address(arg1)][arg2].field_512 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Requestor does not own this token'
    if stor1[address(arg1)].field_0 < 1:
        revert with 'NH{q', 17
    if stor0[address(arg1)][arg2].field_256 != stor1[address(arg1)].field_0 - 1:
        if stor1[address(arg1)].field_0 < 1:
            revert with 'NH{q', 17
        if stor1[address(arg1)].field_0 - 1 >= stor1[address(arg1)].field_0:
            revert with 'NH{q', 50
        if stor0[address(arg1)][arg2].field_256 >= stor1[address(arg1)].field_0:
            revert with 'NH{q', 50
        stor1[address(arg1)][stor0[address(arg1)][arg2].field_256].field_0 = stor1[address(arg1)][stor1[address(arg1)].field_0].field_0
    if not stor1[address(arg1)].field_0:
        revert with 'NH{q', 49
    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
    stor1[address(arg1)].field_0--
    stor0[address(arg1)][arg2].field_0 = 0
    stor0[address(arg1)][arg2].field_256 = 0
    stor0[address(arg1)][arg2].field_512 = 0
    if not stor1[address(arg1)].field_0:
        if stor2.length < 1:
            revert with 'NH{q', 17
        if stor2.length - 1 >= stor2.length:
            revert with 'NH{q', 50
        if arg1 != stor2[stor2.length].field_0:
            idx = 0
            while idx < stor2.length:
                mem[0] = 2
                if stor2[idx].field_0 != arg1:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if idx >= stor2.length:
                    revert with 'NH{q', 50
                stor2[idx].field_0 = stor2[stor2.length].field_0
                if not stor2.length:
                    revert with 'NH{q', 49
                stor2[stor2.length].field_0 = 0
                stor2.length--
                require ext_code.size(arg1)
                call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xd0bb5421: address(arg1), arg2, msg.sender
        if not stor2.length:
            revert with 'NH{q', 49
        stor2[stor2.length].field_0 = 0
        stor2.length--
    require ext_code.size(arg1)
    call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xd0bb5421: address(arg1), arg2, msg.sender
}



}
