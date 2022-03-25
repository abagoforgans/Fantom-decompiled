contract main {




// =====================  Runtime code  =====================


#
#  - tokens(address arg1)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
mapping of struct sub_cefe0f21;
array of address tokensList;
array of address stor68539412096397065356586712351047378110740926828376844291700787184847249528494;

function canDeposit(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(sub_cefe0f21[address(arg1)].field_1456)
}

function tokensList(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tokensList.length
    return tokensList[arg1]
}

function owner() payable {
    return owner
}

function isActive(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(sub_cefe0f21[address(arg1)].field_1448)
}

function tokensCount() payable {
    return tokensList.length
}

function canMint(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(sub_cefe0f21[address(arg1)].field_1464)
}

function sub_cefe0f21(?) payable {
    require calldata.size - 4 >= 32
    return sub_cefe0f21[address(arg1)].field_1440
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        owner = arg1
        emit OwnershipTransferred(0, arg1);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x73436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = arg1
            emit OwnershipTransferred(0, arg1);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x73436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = arg1
                emit OwnershipTransferred(0, arg1);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                owner = arg1
                emit OwnershipTransferred(0, arg1);
                uint8(stor0.field_8) = 0
                uint8(stor0.field_8) = 0
}

function sub_d75c1c4c(?) payable {
    require calldata.size - 4 >= 224
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + ('cd', 36).length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_cefe0f21[address(cd[4])].field_0:
        revert with 0, 'token unknown'
    sub_cefe0f21[address(cd[4])].field_1024 = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        sub_cefe0f21[address(cd[4])][s + 4].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while sub_cefe0f21[address(cd[4])][4].length + 31 / 32 > idx:
        sub_cefe0f21[address(cd[4])][idx + 4].field_0 = 0
        idx = idx + 1
        continue 
    sub_cefe0f21[address(cd[4])].field_1280 = address(cd[68])
    sub_cefe0f21[address(cd[4])].field_1440 = uint8(cd[100])
    sub_cefe0f21[address(cd[4])].field_1448 = Mask(88, 0, bool(cd[132]))
    sub_cefe0f21[address(cd[4])].field_1456 = Mask(80, 0, bool(cd[164]))
    sub_cefe0f21[address(cd[4])].field_1464 = Mask(72, 0, bool(cd[196]))
    mem[160] = sub_cefe0f21[address(cd[4])][1].field_0
    idx = 160
    s = 0
    while sub_cefe0f21[address(cd[4])][1].length + 160 > idx + 32:
        mem[idx + 32] = sub_cefe0f21[address(cd[4])][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0x7dfa4f44: Array(len=sub_cefe0f21[address(cd[4])][1].length, data=mem[160 len sub_cefe0f21[address(cd[4])][1].length + (floor32(sub_cefe0f21[address(cd[4])][1].length - 1) + -sub_cefe0f21[address(cd[4])][1].length + 32 % 32)]), address(cd[4])
}

function sub_6a77a214(?) payable {
    require calldata.size - 4 >= 224
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_cefe0f21[address(arg1)].field_0:
        revert with 0, 'token already known'
    require ext_code.size(arg1)
    staticcall arg1.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[31 len 1]:
        revert with 0, 'token decimals invalid'
    tokensList.length++
    stor9787[stor103.length] = arg1
    mem[96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _15 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require return_data.size >= mem[mem[96] + 96] + mem[96] + 32 and mem[mem[96] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _18 = mem[_15 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_15 + 96])] = mem[_15 + 128 len ceil32(mem[_15 + 96])]
    if not _18 % 32:
        mem[_18 + ceil32(return_data.size) + 128] = tokensList.length
        mem[_18 + ceil32(return_data.size) + 160] = ceil32(return_data.size) + 96
        mem[_18 + ceil32(return_data.size) + 448] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.symbol() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_18 + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _1654 = mem[_18 + ceil32(return_data.size) + 448]
        require mem[_18 + ceil32(return_data.size) + 448] <= 4294967296
        require mem[_18 + ceil32(return_data.size) + 448] + 32 <= return_data.size
        require return_data.size >= mem[_18 + ceil32(return_data.size) + mem[_18 + ceil32(return_data.size) + 448] + 448] + mem[_18 + ceil32(return_data.size) + 448] + 32 and mem[_18 + ceil32(return_data.size) + mem[_18 + ceil32(return_data.size) + 448] + 448] <= 4294967296
        mem[_18 + (2 * ceil32(return_data.size)) + 448] = mem[_18 + ceil32(return_data.size) + mem[_18 + ceil32(return_data.size) + 448] + 448]
        _1660 = mem[_18 + ceil32(return_data.size) + _1654 + 448]
        mem[_18 + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[_18 + ceil32(return_data.size) + _1654 + 448])] = mem[_18 + ceil32(return_data.size) + _1654 + 480 len ceil32(mem[_18 + ceil32(return_data.size) + _1654 + 448])]
        if not _1660 % 32:
            mem[_18 + ceil32(return_data.size) + 192] = _18 + (2 * ceil32(return_data.size)) + 448
            mem[_18 + ceil32(return_data.size) + 224] = uint8(ext_call.return_data[0])
            mem[64] = _1660 + _18 + (2 * ceil32(return_data.size)) + ceil32(arg2.length) + 512
            mem[_1660 + _18 + (2 * ceil32(return_data.size)) + 480] = arg2.length
            mem[_1660 + _18 + (2 * ceil32(return_data.size)) + 512 len arg2.length] = arg2[all]
            mem[_1660 + _18 + (2 * ceil32(return_data.size)) + arg2.length + 512] = 0
            mem[_18 + ceil32(return_data.size) + 256] = _1660 + _18 + (2 * ceil32(return_data.size)) + 480
            mem[_18 + ceil32(return_data.size) + 288] = arg3
            mem[_18 + ceil32(return_data.size) + 320] = arg4
            mem[_18 + ceil32(return_data.size) + 352] = arg5
            mem[_18 + ceil32(return_data.size) + 384] = arg6
            mem[_18 + ceil32(return_data.size) + 416] = arg7
            mem[32] = 102
            sub_cefe0f21[address(arg1)].field_0 = tokensList.length
            sub_cefe0f21[address(arg1)][1][].field_0 = Array(len=mem[ceil32(return_data.size) + 96], data=mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]])
            sub_cefe0f21[address(arg1)][2][].field_0 = Array(len=mem[_18 + (2 * ceil32(return_data.size)) + 448], data=mem[_18 + (2 * ceil32(return_data.size)) + 480 len mem[_18 + (2 * ceil32(return_data.size)) + 448]])
            sub_cefe0f21[address(arg1)].field_768 = uint8(ext_call.return_data[0])
            mem[0] = sha3(address(arg1), 102) + 4
            sub_cefe0f21[address(arg1)][4][].field_0 = Array(len=arg2.length, data=arg2[all])
            sub_cefe0f21[address(arg1)].field_1280 = arg3
            sub_cefe0f21[address(arg1)].field_1440 = arg4
            sub_cefe0f21[address(arg1)].field_1448 = uint8(arg5)
            sub_cefe0f21[address(arg1)].field_1456 = uint8(arg6)
            sub_cefe0f21[address(arg1)].field_1464 = Mask(72, 0, arg7)
            sub_cefe0f21[address(arg1)].field_1472 = Mask(64, 24, arg5) >> 24
            sub_cefe0f21[address(arg1)].field_1472 = Mask(64, 16, arg6) >> 16
            mem[_1660 + _18 + (2 * ceil32(return_data.size)) + ceil32(arg2.length) + 544] = tokensList.length - 1
            mem[_1660 + _18 + (2 * ceil32(return_data.size)) + ceil32(arg2.length) + 512] = 64
            mem[_1660 + _18 + (2 * ceil32(return_data.size)) + ceil32(arg2.length) + 576] = mem[ceil32(return_data.size) + 96]
            mem[_1660 + _18 + (2 * ceil32(return_data.size)) + ceil32(arg2.length) + 608 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                emit 0x4af74193: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[_1660 + _18 + (2 * ceil32(return_data.size)) + arg2.length + 544 len mem[ceil32(return_data.size) + 96] + -arg2.length + ceil32(arg2.length) + 64], arg1
            else:
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _1660 + _18 + (2 * ceil32(return_data.size)) + ceil32(arg2.length) + 608] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _1660 + _18 + (2 * ceil32(return_data.size)) + ceil32(arg2.length) + -(mem[ceil32(return_data.size) + 96] % 32) + 640 len mem[ceil32(return_data.size) + 96] % 32]
                emit 0x4af74193: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[_1660 + _18 + (2 * ceil32(return_data.size)) + arg2.length + 544 len floor32(mem[ceil32(return_data.size) + 96]) + -arg2.length + ceil32(arg2.length) + 96], arg1
        else:
            mem[floor32(_1660) + _18 + (2 * ceil32(return_data.size)) + 480] = mem[floor32(_1660) + _18 + (2 * ceil32(return_data.size)) + -(_1660 % 32) + 512 len _1660 % 32]
            mem[_18 + ceil32(return_data.size) + 192] = _18 + (2 * ceil32(return_data.size)) + 448
            mem[_18 + ceil32(return_data.size) + 224] = uint8(ext_call.return_data[0])
            mem[64] = floor32(_1660) + _18 + (2 * ceil32(return_data.size)) + ceil32(arg2.length) + 544
            mem[floor32(_1660) + _18 + (2 * ceil32(return_data.size)) + 512] = arg2.length
            mem[floor32(_1660) + _18 + (2 * ceil32(return_data.size)) + 544 len arg2.length] = arg2[all]
            mem[floor32(_1660) + _18 + (2 * ceil32(return_data.size)) + arg2.length + 544] = 0
            mem[_18 + ceil32(return_data.size) + 256] = floor32(_1660) + _18 + (2 * ceil32(return_data.size)) + 512
            mem[_18 + ceil32(return_data.size) + 288] = arg3
            mem[_18 + ceil32(return_data.size) + 320] = arg4
            mem[_18 + ceil32(return_data.size) + 352] = arg5
            mem[_18 + ceil32(return_data.size) + 384] = arg6
            mem[_18 + ceil32(return_data.size) + 416] = arg7
            mem[32] = 102
            sub_cefe0f21[address(arg1)].field_0 = tokensList.length
            sub_cefe0f21[address(arg1)][1][].field_0 = Array(len=mem[ceil32(return_data.size) + 96], data=mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]])
            sub_cefe0f21[address(arg1)][2][].field_0 = Array(len=mem[_18 + (2 * ceil32(return_data.size)) + 448], data=mem[_18 + (2 * ceil32(return_data.size)) + 480 len mem[_18 + (2 * ceil32(return_data.size)) + 448]])
            sub_cefe0f21[address(arg1)].field_768 = uint8(ext_call.return_data[0])
            mem[0] = sha3(address(arg1), 102) + 4
            sub_cefe0f21[address(arg1)][4][].field_0 = Array(len=arg2.length, data=arg2[all])
            sub_cefe0f21[address(arg1)].field_1280 = arg3
            sub_cefe0f21[address(arg1)].field_1440 = arg4
            sub_cefe0f21[address(arg1)].field_1448 = uint8(arg5)
            sub_cefe0f21[address(arg1)].field_1456 = uint8(arg6)
            sub_cefe0f21[address(arg1)].field_1464 = Mask(72, 0, arg7)
            sub_cefe0f21[address(arg1)].field_1472 = Mask(64, 24, arg5) >> 24
            sub_cefe0f21[address(arg1)].field_1472 = Mask(64, 16, arg6) >> 16
            mem[floor32(_1660) + _18 + (2 * ceil32(return_data.size)) + ceil32(arg2.length) + 576] = tokensList.length - 1
            mem[floor32(_1660) + _18 + (2 * ceil32(return_data.size)) + ceil32(arg2.length) + 544] = 64
            mem[floor32(_1660) + _18 + (2 * ceil32(return_data.size)) + ceil32(arg2.length) + 608] = mem[ceil32(return_data.size) + 96]
            mem[floor32(_1660) + _18 + (2 * ceil32(return_data.size)) + ceil32(arg2.length) + 640 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                emit 0x4af74193: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[floor32(_1660) + _18 + (2 * ceil32(return_data.size)) + arg2.length + 576 len mem[ceil32(return_data.size) + 96] + -arg2.length + ceil32(arg2.length) + 64], arg1
            else:
                mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_1660) + _18 + (2 * ceil32(return_data.size)) + ceil32(arg2.length) + 640] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_1660) + _18 + (2 * ceil32(return_data.size)) + ceil32(arg2.length) + -(mem[ceil32(return_data.size) + 96] % 32) + 672 len mem[ceil32(return_data.size) + 96] % 32]
                emit 0x4af74193: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[floor32(_1660) + _18 + (2 * ceil32(return_data.size)) + arg2.length + 576 len floor32(mem[ceil32(return_data.size) + 96]) + -arg2.length + ceil32(arg2.length) + 96], arg1
    else:
        mem[floor32(_18) + ceil32(return_data.size) + 128] = mem[floor32(_18) + ceil32(return_data.size) + -(_18 % 32) + 160 len _18 % 32]
        mem[floor32(_18) + ceil32(return_data.size) + 160] = tokensList.length
        mem[floor32(_18) + ceil32(return_data.size) + 192] = ceil32(return_data.size) + 96
        mem[floor32(_18) + ceil32(return_data.size) + 480] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.symbol() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(_18) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _1657 = mem[floor32(_18) + ceil32(return_data.size) + 480]
        require mem[floor32(_18) + ceil32(return_data.size) + 480] <= 4294967296
        require mem[floor32(_18) + ceil32(return_data.size) + 480] + 32 <= return_data.size
        require return_data.size >= mem[floor32(_18) + ceil32(return_data.size) + mem[floor32(_18) + ceil32(return_data.size) + 480] + 480] + mem[floor32(_18) + ceil32(return_data.size) + 480] + 32 and mem[floor32(_18) + ceil32(return_data.size) + mem[floor32(_18) + ceil32(return_data.size) + 480] + 480] <= 4294967296
        mem[floor32(_18) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(_18) + ceil32(return_data.size) + mem[floor32(_18) + ceil32(return_data.size) + 480] + 480]
        _1662 = mem[floor32(_18) + ceil32(return_data.size) + _1657 + 480]
        mem[floor32(_18) + (2 * ceil32(return_data.size)) + 512 len ceil32(mem[floor32(_18) + ceil32(return_data.size) + _1657 + 480])] = mem[floor32(_18) + ceil32(return_data.size) + _1657 + 512 len ceil32(mem[floor32(_18) + ceil32(return_data.size) + _1657 + 480])]
        if not _1662 % 32:
            mem[floor32(_18) + ceil32(return_data.size) + 224] = floor32(_18) + (2 * ceil32(return_data.size)) + 480
            mem[floor32(_18) + ceil32(return_data.size) + 256] = uint8(ext_call.return_data[0])
            mem[64] = _1662 + floor32(_18) + (2 * ceil32(return_data.size)) + ceil32(arg2.length) + 544
            mem[_1662 + floor32(_18) + (2 * ceil32(return_data.size)) + 512] = arg2.length
            mem[_1662 + floor32(_18) + (2 * ceil32(return_data.size)) + 544 len arg2.length] = arg2[all]
            mem[_1662 + floor32(_18) + (2 * ceil32(return_data.size)) + arg2.length + 544] = 0
            mem[floor32(_18) + ceil32(return_data.size) + 288] = _1662 + floor32(_18) + (2 * ceil32(return_data.size)) + 512
            mem[floor32(_18) + ceil32(return_data.size) + 320] = arg3
            mem[floor32(_18) + ceil32(return_data.size) + 352] = arg4
            mem[floor32(_18) + ceil32(return_data.size) + 384] = arg5
            mem[floor32(_18) + ceil32(return_data.size) + 416] = arg6
            mem[floor32(_18) + ceil32(return_data.size) + 448] = arg7
            mem[32] = 102
            sub_cefe0f21[address(arg1)].field_0 = tokensList.length
            sub_cefe0f21[address(arg1)][1][].field_0 = Array(len=mem[ceil32(return_data.size) + 96], data=mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]])
            sub_cefe0f21[address(arg1)][2][].field_0 = Array(len=mem[floor32(_18) + (2 * ceil32(return_data.size)) + 480], data=mem[floor32(_18) + (2 * ceil32(return_data.size)) + 512 len mem[floor32(_18) + (2 * ceil32(return_data.size)) + 480]])
            sub_cefe0f21[address(arg1)].field_768 = uint8(ext_call.return_data[0])
            mem[0] = sha3(address(arg1), 102) + 4
            sub_cefe0f21[address(arg1)][4][].field_0 = Array(len=arg2.length, data=arg2[all])
            sub_cefe0f21[address(arg1)].field_1280 = arg3
            sub_cefe0f21[address(arg1)].field_1440 = arg4
            sub_cefe0f21[address(arg1)].field_1448 = uint8(arg5)
            sub_cefe0f21[address(arg1)].field_1456 = uint8(arg6)
            sub_cefe0f21[address(arg1)].field_1464 = Mask(72, 0, arg7)
            sub_cefe0f21[address(arg1)].field_1472 = Mask(64, 24, arg5) >> 24
            sub_cefe0f21[address(arg1)].field_1472 = Mask(64, 16, arg6) >> 16
            mem[_1662 + floor32(_18) + (2 * ceil32(return_data.size)) + ceil32(arg2.length) + 576] = tokensList.length - 1
            mem[_1662 + floor32(_18) + (2 * ceil32(return_data.size)) + ceil32(arg2.length) + 544] = 64
            mem[_1662 + floor32(_18) + (2 * ceil32(return_data.size)) + ceil32(arg2.length) + 608] = mem[ceil32(return_data.size) + 96]
            mem[_1662 + floor32(_18) + (2 * ceil32(return_data.size)) + ceil32(arg2.length) + 640 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                emit 0x4af74193: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[_1662 + floor32(_18) + (2 * ceil32(return_data.size)) + arg2.length + 576 len mem[ceil32(return_data.size) + 96] + -arg2.length + ceil32(arg2.length) + 64], arg1
            else:
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _1662 + floor32(_18) + (2 * ceil32(return_data.size)) + ceil32(arg2.length) + 640] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _1662 + floor32(_18) + (2 * ceil32(return_data.size)) + ceil32(arg2.length) + -(mem[ceil32(return_data.size) + 96] % 32) + 672 len mem[ceil32(return_data.size) + 96] % 32]
                emit 0x4af74193: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[_1662 + floor32(_18) + (2 * ceil32(return_data.size)) + arg2.length + 576 len floor32(mem[ceil32(return_data.size) + 96]) + -arg2.length + ceil32(arg2.length) + 96], arg1
        else:
            mem[floor32(_1662) + floor32(_18) + (2 * ceil32(return_data.size)) + 512] = mem[floor32(_1662) + floor32(_18) + (2 * ceil32(return_data.size)) + -(_1662 % 32) + 544 len _1662 % 32]
            mem[floor32(_18) + ceil32(return_data.size) + 224] = floor32(_18) + (2 * ceil32(return_data.size)) + 480
            mem[floor32(_18) + ceil32(return_data.size) + 256] = uint8(ext_call.return_data[0])
            mem[64] = floor32(_1662) + floor32(_18) + (2 * ceil32(return_data.size)) + ceil32(arg2.length) + 576
            mem[floor32(_1662) + floor32(_18) + (2 * ceil32(return_data.size)) + 544] = arg2.length
            mem[floor32(_1662) + floor32(_18) + (2 * ceil32(return_data.size)) + 576 len arg2.length] = arg2[all]
            mem[floor32(_1662) + floor32(_18) + (2 * ceil32(return_data.size)) + arg2.length + 576] = 0
            mem[floor32(_18) + ceil32(return_data.size) + 288] = floor32(_1662) + floor32(_18) + (2 * ceil32(return_data.size)) + 544
            mem[floor32(_18) + ceil32(return_data.size) + 320] = arg3
            mem[floor32(_18) + ceil32(return_data.size) + 352] = arg4
            mem[floor32(_18) + ceil32(return_data.size) + 384] = arg5
            mem[floor32(_18) + ceil32(return_data.size) + 416] = arg6
            mem[floor32(_18) + ceil32(return_data.size) + 448] = arg7
            mem[32] = 102
            sub_cefe0f21[address(arg1)].field_0 = tokensList.length
            sub_cefe0f21[address(arg1)][1][].field_0 = Array(len=mem[ceil32(return_data.size) + 96], data=mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]])
            sub_cefe0f21[address(arg1)][2][].field_0 = Array(len=mem[floor32(_18) + (2 * ceil32(return_data.size)) + 480], data=mem[floor32(_18) + (2 * ceil32(return_data.size)) + 512 len mem[floor32(_18) + (2 * ceil32(return_data.size)) + 480]])
            sub_cefe0f21[address(arg1)].field_768 = uint8(ext_call.return_data[0])
            mem[0] = sha3(address(arg1), 102) + 4
            sub_cefe0f21[address(arg1)][4][].field_0 = Array(len=arg2.length, data=arg2[all])
            sub_cefe0f21[address(arg1)].field_1280 = arg3
            sub_cefe0f21[address(arg1)].field_1440 = arg4
            sub_cefe0f21[address(arg1)].field_1448 = uint8(arg5)
            sub_cefe0f21[address(arg1)].field_1456 = uint8(arg6)
            sub_cefe0f21[address(arg1)].field_1464 = Mask(72, 0, arg7)
            sub_cefe0f21[address(arg1)].field_1472 = Mask(64, 24, arg5) >> 24
            sub_cefe0f21[address(arg1)].field_1472 = Mask(64, 16, arg6) >> 16
            mem[floor32(_1662) + floor32(_18) + (2 * ceil32(return_data.size)) + ceil32(arg2.length) + 608] = tokensList.length - 1
            mem[floor32(_1662) + floor32(_18) + (2 * ceil32(return_data.size)) + ceil32(arg2.length) + 576] = 64
            mem[floor32(_1662) + floor32(_18) + (2 * ceil32(return_data.size)) + ceil32(arg2.length) + 640] = mem[ceil32(return_data.size) + 96]
            mem[floor32(_1662) + floor32(_18) + (2 * ceil32(return_data.size)) + ceil32(arg2.length) + 672 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                emit 0x4af74193: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[floor32(_1662) + floor32(_18) + (2 * ceil32(return_data.size)) + arg2.length + 608 len mem[ceil32(return_data.size) + 96] + -arg2.length + ceil32(arg2.length) + 64], arg1
            else:
                mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_1662) + floor32(_18) + (2 * ceil32(return_data.size)) + ceil32(arg2.length) + 672] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_1662) + floor32(_18) + (2 * ceil32(return_data.size)) + ceil32(arg2.length) + -(mem[ceil32(return_data.size) + 96] % 32) + 704 len mem[ceil32(return_data.size) + 96] % 32]
                emit 0x4af74193: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[floor32(_1662) + floor32(_18) + (2 * ceil32(return_data.size)) + arg2.length + 608 len floor32(mem[ceil32(return_data.size) + 96]) + -arg2.length + ceil32(arg2.length) + 96], arg1
}



}
