contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
array of struct stor1;
array of struct stor2;
array of struct stor3;

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

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(arg1)].field_0:
        stor3.length++
        stor3[stor3.length].field_0 = arg1
    stor1[address(arg1)].field_0++
    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = arg2
    stor2[address(arg1)][address(msg.sender)].field_0++
    stor2[address(arg1)][address(msg.sender)][stor2[address(arg1)][address(msg.sender)].field_0].field_0 = arg2
    stor0[address(arg1)][arg2].field_0 = block.number
    stor0[address(arg1)][arg2].field_256 = stor1[address(arg1)].field_0
    stor0[address(arg1)][arg2].field_512 = stor2[address(arg1)][address(msg.sender)].field_0
    stor0[address(arg1)][arg2].field_768 = msg.sender
    require ext_code.size(arg1)
    call arg1.0x42842e0e with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x643c092d: address(arg1), arg2, msg.sender
}

function sub_2c0a62c0(?) payable {
    mem[64] = (32 * stor3.length) + 128
    mem[96] = stor3.length
    if not stor3.length:
        mem[(32 * stor3.length) + 128] = 32
        mem[(32 * stor3.length) + 160] = stor3.length
        idx = 0
        s = 128
        t = (32 * stor3.length) + 192
        while idx < stor3.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor3.length) + 128
           len (96 * stor3.length) + 64
    mem[128] = address(stor3.field_0)
    idx = 128
    s = 0
    while (32 * stor3.length) + 96 > idx:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor3.length) + 128] = 32
    mem[(32 * stor3.length) + 160] = stor3.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor3.length) + -mem[64] + 192
}

function sub_3cf322ec(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if stor2[address(arg1)][address(msg.sender)].field_0:
        mem[128] = stor2[address(arg1)][address(msg.sender)].field_0
        idx = 128
        s = 0
        while (32 * stor2[address(arg1)][address(msg.sender)].field_0) + 96 > idx:
            mem[idx + 32] = stor2[address(arg1)][address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor2[address(arg1)][address(msg.sender)].field_0, data=mem[128 len 32 * stor2[address(arg1)][address(msg.sender)].field_0]), 
    mem[(32 * stor2[address(arg1)][address(msg.sender)].field_0) + 128] = 32
    mem[(32 * stor2[address(arg1)][address(msg.sender)].field_0) + 160] = stor2[address(arg1)][address(msg.sender)].field_0
    mem[(32 * stor2[address(arg1)][address(msg.sender)].field_0) + 192 len 32 * stor2[address(arg1)][address(msg.sender)].field_0] = mem[128 len 32 * stor2[address(arg1)][address(msg.sender)].field_0]
    return memory
      from (32 * stor2[address(arg1)][address(msg.sender)].field_0) + 128
       len (96 * stor2[address(arg1)][address(msg.sender)].field_0) + 64
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0[address(arg1)][arg2].field_768 != msg.sender:
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
    if stor2[address(arg1)][address(msg.sender)].field_0 < 1:
        revert with 'NH{q', 17
    if stor0[address(arg1)][arg2].field_512 != stor2[address(arg1)][address(msg.sender)].field_0 - 1:
        if stor2[address(arg1)][address(msg.sender)].field_0 < 1:
            revert with 'NH{q', 17
        if stor2[address(arg1)][address(msg.sender)].field_0 - 1 >= stor2[address(arg1)][address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if stor0[address(arg1)][arg2].field_512 >= stor2[address(arg1)][address(msg.sender)].field_0:
            revert with 'NH{q', 50
        stor2[address(arg1)][address(msg.sender)][stor0[address(arg1)][arg2].field_512].field_0 = stor2[address(arg1)][address(msg.sender)][stor2[address(arg1)][address(msg.sender)].field_0].field_0
    if not stor2[address(arg1)][address(msg.sender)].field_0:
        revert with 'NH{q', 49
    stor2[address(arg1)][address(msg.sender)][stor2[address(arg1)][address(msg.sender)].field_0].field_0 = 0
    stor2[address(arg1)][address(msg.sender)].field_0--
    stor0[address(arg1)][arg2].field_0 = 0
    stor0[address(arg1)][arg2].field_256 = 0
    stor0[address(arg1)][arg2].field_512 = 0
    stor0[address(arg1)][arg2].field_768 = 0
    if not stor1[address(arg1)].field_0:
        if stor3.length < 1:
            revert with 'NH{q', 17
        if stor3.length - 1 >= stor3.length:
            revert with 'NH{q', 50
        if arg1 != stor3[stor3.length].field_0:
            idx = 0
            while idx < stor3.length:
                mem[0] = 3
                if stor3[idx].field_0 != arg1:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if idx >= stor3.length:
                    revert with 'NH{q', 50
                stor3[idx].field_0 = stor3[stor3.length].field_0
                if not stor3.length:
                    revert with 'NH{q', 49
                stor3[stor3.length].field_0 = 0
                stor3.length--
                require ext_code.size(arg1)
                call arg1.0x42842e0e with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xd0bb5421: address(arg1), arg2, msg.sender
        if not stor3.length:
            revert with 'NH{q', 49
        stor3[stor3.length].field_0 = 0
        stor3.length--
    require ext_code.size(arg1)
    call arg1.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xd0bb5421: address(arg1), arg2, msg.sender
}



}
