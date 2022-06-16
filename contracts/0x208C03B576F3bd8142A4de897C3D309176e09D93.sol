contract main {




// =====================  Runtime code  =====================


const sub_78cdef33(?) = 'SRD.COSMIC', 0


uint256 stor0;
address RNDAddress;
address sub_abfaf568Address;

function RND() payable {
    return RNDAddress
}

function sub_abfaf568(?) payable {
    return sub_abfaf568Address
}

function _fallback() payable {
    revert
}

function sub_f2881e21(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == arg5
    mem[100] = arg2
    require ext_code.size(address(arg1))
    staticcall address(arg1).getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == msg.sender:
        mem[ceil32(return_data.size) + 96] = 10
        mem[ceil32(return_data.size) + 128] = 'SRD.COSMIC'
        require ext_code.size(sub_abfaf568Address)
        call sub_abfaf568Address.0x5e554b5e with:
             gas gas_remaining wei
            args 128, address(arg1), arg2, arg5, 10, 'SRD.COSMIC', 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if block.number < 1:
            revert with 'NH{q', 17
        mem[ceil32(return_data.size) + 192] = block.hash(block.number - 1)
        mem[ceil32(return_data.size) + 224] = block.timestamp
        mem[ceil32(return_data.size) + 256] = msg.sender
        mem[ceil32(return_data.size) + 160] = 96
        mem[ceil32(return_data.size) + 288] = 0x717e1d3700000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 292] = sha3(block.hash(block.number - 1), block.timestamp, msg.sender)
        mem[ceil32(return_data.size) + 324] = 3
        mem[ceil32(return_data.size) + 356] = 6
        require ext_code.size(RNDAddress)
        staticcall RNDAddress.0x717e1d37 with:
                gas gas_remaining wei
               args sha3(block.hash(block.number - 1), block.timestamp, msg.sender), 3, 6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 288
        require return_data.size >= 64
        _113 = mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32
        require mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 319 < ceil32(return_data.size) + return_data.size + 288
        _117 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 288]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 288] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 288]) + 289 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 288]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 288]) + 289
        mem[(2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 288]
        require _113 + (32 * _117) + 32 <= return_data.size
        idx = 0
        s = ceil32(return_data.size) + _113 + 320
        t = (2 * ceil32(return_data.size)) + 320
        while idx < _117:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _240 = mem[ceil32(return_data.size) + 320]
        require mem[ceil32(return_data.size) + 320] == mem[ceil32(return_data.size) + 320]
        if mem[ceil32(return_data.size) + 320] > -stor0 - 1:
            revert with 'NH{q', 17
        if arg5 and mem[ceil32(return_data.size) + 320] + stor0 > -1 / arg5:
            revert with 'NH{q', 17
        _245 = mem[64]
        mem[64] = mem[64] + 64
        mem[_245] = 10
        mem[_245 + 32] = 'SRD.COSMIC'
        mem[mem[64] + 132] = 10
        mem[mem[64] + 164] = 'SRD.COSMIC'
        mem[mem[64] + 174] = 0
        mem[mem[64] + 68] = arg4
        mem[mem[64] + 100] = (_240 * arg5) + (stor0 * arg5) / 100
        require ext_code.size(sub_abfaf568Address)
        call sub_abfaf568Address.0xd79fdf0a with:
             gas gas_remaining wei
            args 128, address(arg3), arg4, (_240 * arg5) + (stor0 * arg5) / 100, 10, 'SRD.COSMIC', 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 32] = address(arg3)
        mem[mem[64] + 64] = arg4
        _382 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        emit Transfer(arg5, sha3(address(arg1), arg2), sha3(mem[_382 + 32 len mem[_382]]));
    else:
        mem[ceil32(return_data.size) + 100] = arg2
        require ext_code.size(address(arg1))
        staticcall address(arg1).ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg2
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'TransferCosmic: not approved to transfer'
        mem[(2 * ceil32(return_data.size)) + 96] = 10
        mem[(2 * ceil32(return_data.size)) + 128] = 'SRD.COSMIC'
        require ext_code.size(sub_abfaf568Address)
        call sub_abfaf568Address.0x5e554b5e with:
             gas gas_remaining wei
            args 128, address(arg1), arg2, arg5, 10, 'SRD.COSMIC', 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if block.number < 1:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 192] = block.hash(block.number - 1)
        mem[(2 * ceil32(return_data.size)) + 224] = block.timestamp
        mem[(2 * ceil32(return_data.size)) + 256] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 160] = 96
        mem[(2 * ceil32(return_data.size)) + 288] = 0x717e1d3700000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 292] = sha3(block.hash(block.number - 1), block.timestamp, msg.sender)
        mem[(2 * ceil32(return_data.size)) + 324] = 3
        mem[(2 * ceil32(return_data.size)) + 356] = 6
        require ext_code.size(RNDAddress)
        staticcall RNDAddress.0x717e1d37 with:
                gas gas_remaining wei
               args sha3(block.hash(block.number - 1), block.timestamp, msg.sender), 3, 6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 288
        require return_data.size >= 64
        _114 = mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32
        require mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 319 < (2 * ceil32(return_data.size)) + return_data.size + 288
        _118 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 288]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 288] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 288]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 288]) + 289
        mem[(4 * ceil32(return_data.size)) + 288] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 288]
        require _114 + (32 * _118) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _114 + 320
        t = (4 * ceil32(return_data.size)) + 320
        while idx < _118:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _242 = mem[(2 * ceil32(return_data.size)) + 320]
        require mem[(2 * ceil32(return_data.size)) + 320] == mem[(2 * ceil32(return_data.size)) + 320]
        if mem[(2 * ceil32(return_data.size)) + 320] > -stor0 - 1:
            revert with 'NH{q', 17
        if arg5 and mem[(2 * ceil32(return_data.size)) + 320] + stor0 > -1 / arg5:
            revert with 'NH{q', 17
        _249 = mem[64]
        mem[64] = mem[64] + 64
        mem[_249] = 10
        mem[_249 + 32] = 'SRD.COSMIC'
        mem[mem[64] + 132] = 10
        mem[mem[64] + 164] = 'SRD.COSMIC'
        mem[mem[64] + 174] = 0
        mem[mem[64] + 68] = arg4
        mem[mem[64] + 100] = (_242 * arg5) + (stor0 * arg5) / 100
        require ext_code.size(sub_abfaf568Address)
        call sub_abfaf568Address.0xd79fdf0a with:
             gas gas_remaining wei
            args 128, address(arg3), arg4, (_242 * arg5) + (stor0 * arg5) / 100, 10, 'SRD.COSMIC', 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 32] = address(arg3)
        mem[mem[64] + 64] = arg4
        _388 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        emit Transfer(arg5, sha3(address(arg1), arg2), sha3(mem[_388 + 32 len mem[_388]]));
}



}
