contract main {




// =====================  Runtime code  =====================


uint256 lastExecuted;
address sub_149f2b27Address;

function sub_149f2b27(?) payable {
    return sub_149f2b27Address
}

function lastExecuted() payable {
    return lastExecuted
}

function _fallback() payable {
    revert
}

function sub_7a531bd1(?) payable {
    if block.timestamp < lastExecuted:
        revert with 'NH{q', 17
    if block.timestamp - lastExecuted <= 180:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Execute SpiritMaker: automatition timer not elapsed'
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    mem[128] = 0x5cc61a78f164885776aa610fb0fe1257df78e59b
    mem[96] = 0x303e6aa400000000000000000000000000000000000000000000000000000000
    mem[100] = 64
    mem[164] = 0x303e6aa400000000000000000000000000000000000000000000000000000000
    idx = 0
    s = 128
    t = 196
    while idx < 0x303e6aa400000000000000000000000000000000000000000000000000000000:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[132] = 0x7cd548000000000000000000000000000000000000000000000000000000060
    mem[0x7cd5480000000000000000000000000000000000000000000000000000000c4] = 0
    idx = 0
    s = 128
    t = 0x7cd5480000000000000000000000000000000000000000000000000000000e4
    while idx < 0, mem[100 len 28]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_149f2b27Address)
    call sub_149f2b27Address.convertMultiple(address[] arg1, address[] arg2) with:
         gas gas_remaining wei
        args mem[100 len (32 * 0, mem[100 len 28]) + 0x7cd548000000000000000000000000000000000000000000000000000000080]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    lastExecuted = block.timestamp
}



}
