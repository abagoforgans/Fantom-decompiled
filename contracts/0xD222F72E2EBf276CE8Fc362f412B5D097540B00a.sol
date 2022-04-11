contract main {




// =====================  Runtime code  =====================


array of uint256 version;
address owner;
mapping of address sub_fd1e806d;
mapping of address sub_ce034bba;
array of struct sub_637bea61;
uint256 sub_c00c1be4;

function version() payable {
    return version[0 len version.length]
}

function sub_637bea61(?) payable {
    return sub_637bea61[arg1][0 len sub_637bea61[arg1].length].field_0
}

function owner() payable {
    return owner
}

function sub_c00c1be4(?) payable {
    return sub_c00c1be4
}

function sub_ce034bba(?) payable {
    require calldata.size - 4 >= 64
    return sub_ce034bba[arg1][arg2]
}

function sub_fd1e806d(?) payable {
    require calldata.size - 4 >= 32
    return address(sub_fd1e806d[arg1])
}

function _fallback() payable {
    revert
}

function sub_ea26002d(?) payable {
    require calldata.size - 4 >= 32
    require sub_c00c1be4 <= test266151307()
    if sub_c00c1be4:
        mem[128 len 32 * sub_c00c1be4] = call.data[calldata.size len 32 * sub_c00c1be4]
    idx = 1
    while idx <= sub_c00c1be4:
        mem[0] = idx
        mem[32] = sha3(address(arg1), 3)
        require idx - 1 < sub_c00c1be4
        mem[(32 * idx - 1) + 128] = sub_ce034bba[address(arg1)][idx]
        idx = idx + 1
        continue 
    mem[(32 * sub_c00c1be4) + 192 len floor32(sub_c00c1be4)] = mem[128 len floor32(sub_c00c1be4)]
    return Array(len=sub_c00c1be4, data=mem[128 len floor32(sub_c00c1be4)], mem[(32 * sub_c00c1be4) + floor32(sub_c00c1be4) + 192 len (32 * sub_c00c1be4) - floor32(sub_c00c1be4)]), 
}

function sub_1d453c63(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'invalid sender; must be owner'
    mem[ceil32(arg2.length) + 160] = sub_637bea61[arg1].field_0
    idx = ceil32(arg2.length) + 160
    s = 0
    while ceil32(arg2.length) + sub_637bea61[arg1].length + 160 > idx + 32:
        mem[idx + 32] = sub_637bea61[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sha3(mem[ceil32(arg2.length) + 160 len sub_637bea61[arg1].length]) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Already in use'
    if sub_c00c1be4 + 1 != arg1:
        revert with 0, 'network can be incremental only'
    if arg2.length:
        sub_637bea61[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
    else:
        sub_637bea61[arg1].field_0 = 0
        idx = 0
        while sub_637bea61[arg1].length + 31 / 32 > idx:
            sub_637bea61[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_c00c1be4 = arg1
}

function recover(bytes32 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg2.length != 65:
        mem[ceil32(arg2.length) + 128] = 0
        return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
        mem[ceil32(arg2.length) + 128] = 0
        return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
            mem[ceil32(arg2.length) + 128] = 0
            return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    signer = erecover(arg1, (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function sub_936f660d(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if address(sub_fd1e806d[address(arg1)]):
        revert with 0, 'already registered'
    mem[ceil32(arg3.length) + 128] = 0
    mem[ceil32(arg3.length) + 160] = sub_637bea61[arg2].field_0
    idx = ceil32(arg3.length) + 160
    s = 0
    while ceil32(arg3.length) + sub_637bea61[arg2].length + 160 > idx + 32:
        mem[idx + 32] = sub_637bea61[arg2][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sha3(mem[ceil32(arg3.length) + 160 len sub_637bea61[arg2].length]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'invalid network'
    mem[ceil32(arg3.length) + 192] = address(arg1)
    mem[ceil32(arg3.length) + 160] = 20
    mem[ceil32(arg3.length) + 212] = 60
    if arg3.length != 65:
        if arg1 != 0:
            revert with 0, 'invalid signature'
    else:
        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
            if arg1 != 0:
                revert with 0, 'invalid signature'
        else:
            if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg1)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(signer) != arg1:
                    revert with 0, 'invalid signature'
            else:
                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                    if arg1 != 0:
                        revert with 0, 'invalid signature'
                else:
                    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg1)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(signer) != arg1:
                        revert with 0, 'invalid signature'
    uint256(sub_fd1e806d[address(arg1)]) = msg.sender or Mask(96, 160, uint256(sub_fd1e806d[address(arg1)]))
    sub_ce034bba[msg.sender][arg2] = arg1
}



}
