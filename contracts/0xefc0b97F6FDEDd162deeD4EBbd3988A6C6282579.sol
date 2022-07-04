contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 stor101;
mapping of uint8 stor151;
array of address routers;
array of address sub_4abf825d;
uint256 routerLength;
uint256 sub_f830779e;
uint256 protocolFee;
uint8 sub_6a313950;
array of address stor15476983043190012384489343372246315920096275136309887072151708352759906752532;

function sub_4abf825d(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < uint256(sub_4abf825d[arg1])
    return address(sub_4abf825d[arg1][arg2])
}

function routers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < routers.length
    return routers[arg1]
}

function isSupported(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor151[arg1])
}

function getRouterTokenLength(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor151[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x64446f70706c65526f757465723a3a676574526f75746572546f6b656e4c656e6774683a20726f75746572206973206e6f7420737570706f727465,
                    mem[223 len 5]
    return uint256(sub_4abf825d[address(arg1)])
}

function sub_6a313950(?) payable {
    return sub_6a313950
}

function owner() payable {
    return owner
}

function routerLength() payable {
    return routerLength
}

function protocolFee() payable {
    return protocolFee
}

function sub_f830779e(?) payable {
    return sub_f830779e
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'mOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMaximumRoute(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'mOwnable: caller is not the owne'
    sub_6a313950 = arg1
    emit SetMaximumRoute(sub_6a313950, arg1);
}

function getToken(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.getToken(uint8 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function getTokenIndex(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.getTokenIndex(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[31 len 1]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'mOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setProtocolFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'mOwnable: caller is not the owne'
    if arg1 > sub_f830779e:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x64446f70706c65526f757465723a3a73657450726f746f636f6c4665653a20666565206578636565647320746865206d6178696d75,
                    mem[217 len 11]
    protocolFee = arg1
    emit SetProtocolFee(protocolFee, arg1);
}

function adminWithdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'mOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x30446f70706c65526f757465723a3a61646d696e57697468647261773a20776974686472617720657863656564732062616c616e6365206f66207468697320636f6e74726163,
                    mem[234 len 26]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x64446f70706c65526f757465723a3a61646d696e57697468647261773a207769746864726177206661696c65,
                    mem[208 len 20]
    emit AdminWithdraw(address(arg1), arg2);
}

function removeRouter(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'mOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x64446f70706c65526f757465723a3a72656d6f7665526f757465723a204164647265737320,
                    mem[201 len 27]
    if not stor151[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x64446f70706c65526f757465723a3a72656d6f7665526f757465723a20726f7574657220697320616c72656164792072656d6f7665,
                    mem[217 len 11]
    idx = 0
    while uint8(idx) < uint256(sub_4abf825d[address(arg1)]):
        require uint8(idx) < uint256(sub_4abf825d[address(arg1)])
        mem[100] = arg1
        mem[132] = 0
        require ext_code.size(address(sub_4abf825d[address(arg1)][uint8(idx)]))
        call address(sub_4abf825d[address(arg1)][uint8(idx)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 32, 42, 0x74446f70706c65526f757465723a3a72656d6f7665526f757465723a20617070726f7665206661696c65, mem[206 len 22]
        mem[0] = arg1
        mem[32] = 153
        idx = idx + 1
        continue 
    stor151[address(arg1)] = 0
    mem[32] = 153
    uint256(sub_4abf825d[address(arg1)]) = 0
    mem[0] = sha3(address(arg1), 153)
    s = 0
    while sha3(sha3(address(arg1), 153)) + uint256(sub_4abf825d[address(arg1)]) > None:
        stor[None] = 0
        s = None + 1
        continue 
    idx = 0
    while uint8(idx) < routerLength:
        require uint8(idx) < routers.length
        mem[0] = 152
        if routers[uint8(idx)] != arg1:
            idx = idx + 1
            continue 
        require routerLength - 1 < routers.length
        require uint8(idx) < routers.length
        routers[uint8(idx)] = routers[stor154]
        require routers.length
        routers[routers.length] = 0
        routers.length--
        if 1 <= routerLength:
            routerLength--
            emit RemoveRouter(arg1);
        mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[164] = 32
        idx = 32
        while idx < 30:
            mem[idx + 228] = mem[idx + 128]
            idx = idx + 32
            continue 
        revert with 0, 'SafeMath: subtraction overflow'
    if 1 > routerLength:
        revert with 0, 'SafeMath: subtraction overflow'
    routerLength--
    emit RemoveRouter(arg1);
}

function setRouter(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'mOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 32, 34, 0x73446f70706c65526f757465723a3a736574526f757465723a204164647265737320, mem[(32 * arg2.length) + 230 len 30]
    if 1 == bool(stor151[address(arg1)]):
        revert with 0, 
                    32,
                    48,
                    0x64446f70706c65526f757465723a3a736574526f757465723a20726f7574657220697320616c72656164792061646465,
                    mem[(32 * arg2.length) + 244 len 16]
    stor151[address(arg1)] = 1
    uint256(sub_4abf825d[address(arg1)]) = arg2.length
    if not arg2.length:
        idx = 0
        while uint256(sub_4abf825d[address(arg1)]) > idx:
            address(sub_4abf825d[address(arg1)][idx]) = 0
            idx = idx + 1
            continue 
        routers.length++
        stor2237[stor152.length] = arg1
        idx = 0
        while uint8(idx) < arg2.length:
            require uint8(idx) < arg2.length
            _71 = mem[(32 * uint8(idx)) + 128]
            mem[(32 * arg2.length) + 132] = arg1
            mem[(32 * arg2.length) + 164] = -1
            require ext_code.size(address(_71))
            call address(_71).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), -1
            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg2.length) + 128 > idx:
            address(sub_4abf825d[address(arg1)][s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while uint256(sub_4abf825d[address(arg1)]) > idx:
            address(sub_4abf825d[address(arg1)][idx]) = 0
            idx = idx + 1
            continue 
        routers.length++
        stor2237[stor152.length] = arg1
        idx = 0
        while uint8(idx) < arg2.length:
            require uint8(idx) < arg2.length
            _99 = mem[(32 * uint8(idx)) + 128]
            mem[(32 * arg2.length) + 132] = arg1
            mem[(32 * arg2.length) + 164] = -1
            require ext_code.size(address(_99))
            call address(_99).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), -1
            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
    if routerLength + 1 < routerLength:
        revert with 0, 'SafeMath: addition overflow'
    routerLength++
    mem[(32 * arg2.length) + 224 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    emit SetRouter(address(arg1), Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 224 len (32 * arg2.length) - floor32(arg2.length)]));
}

function sub_2eac89d4(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0
    if sub_6a313950 < arg1.length:
        revert with 0, 
                    32,
                    57,
                    0x77446f70706c65526f757465723a3a63616c63756c617465537761703a20726f75746572206c656e67746820657863656564206d6178696d75,
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 317 len 7]
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 
                        32,
                        38,
                        0x64446f70706c65526f757465723a3a63616c63756c617465537761703a204164647265737320,
                        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 298 len 26]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 151
        if not stor151[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 
                        32,
                        54,
                        0x72446f70706c65526f757465723a3a63616c63756c617465537761703a20726f7574657220697320616c72656164792072656d6f7665,
                        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 314 len 10]
        require idx < arg1.length
        _54 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _56 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 196] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        require ext_code.size(address(_54))
        staticcall address(_54).getTokenIndex(address arg1) with:
                gas gas_remaining wei
               args address(_56)
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg1.length
        _62 = mem[(32 * idx) + 128]
        require idx < arg3.length
        _64 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 196] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]
        require ext_code.size(address(_62))
        staticcall address(_62).getTokenIndex(address arg1) with:
                gas gas_remaining wei
               args address(_64)
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg1.length
        if idx:
            _70 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 196] = uint8(ext_call.return_data[0])
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 228] = uint8(ext_call.return_data[0])
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 260] = s
            require ext_code.size(address(_70))
            staticcall address(_70).calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, s
        else:
            _74 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 196] = uint8(ext_call.return_data[0])
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 228] = uint8(ext_call.return_data[0])
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 260] = arg4
            require ext_code.size(address(_74))
            staticcall address(_74).calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, arg4
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        s = ext_call.return_data[0]
        continue 
    return s
}

function initialize(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x64496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x64496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x64496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x64496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
    if owner != msg.sender:
        revert with 0, 'mOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
    if uint8(stor0.field_8):
        stor101 = 1
        sub_f830779e = 10^15
        protocolFee = arg2
        sub_6a313950 = 2
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x64496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            stor101 = 1
            sub_f830779e = 10^15
            protocolFee = arg2
            sub_6a313950 = 2
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x64496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                stor101 = 1
                sub_f830779e = 10^15
                protocolFee = arg2
                sub_6a313950 = 2
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                stor101 = 1
                uint8(stor0.field_8) = 0
                uint8(stor0.field_8) = 0
                sub_f830779e = 10^15
                protocolFee = arg2
                sub_6a313950 = 2
                uint8(stor0.field_8) = 0
}

function sub_17b2f66b(?) payable {
    require calldata.size - 4 >= 192
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg5.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if sub_6a313950 < arg1.length:
        revert with 0, 
                    32,
                    48,
                    0x6d446f70706c65526f757465723a3a737761703a20726f75746572206c656e67746820657863656564206d6178696d75,
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 340 len 16]
    require 0 < arg2.length
    require arg3.length - 1 < arg3.length
    _14 = mem[(32 * arg3.length - 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = msg.sender
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = this.address
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 292] = arg4
    require ext_code.size(mem[(32 * arg1.length) + 172 len 20])
    call mem[(32 * arg1.length) + 172 len 20].0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg4
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 
                    32,
                    47,
                    0xfe446f70706c65526f757465723a3a737761703a207472616e7366657246726f6d205f746f6b656e41206661696c65,
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 339 len 17]
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'DoppleRouter::swap: Address 0'
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 151
        if not stor151[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 
                        32,
                        45,
                        0x30446f70706c65526f757465723a3a737761703a20726f7574657220697320616c72656164792072656d6f7665,
                        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 337 len 19]
        require idx < arg1.length
        _90 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _93 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        require ext_code.size(address(_90))
        staticcall address(_90).getTokenIndex(address arg1) with:
                gas gas_remaining wei
               args address(_93)
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg1.length
        _104 = mem[(32 * idx) + 128]
        require idx < arg3.length
        _110 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]
        require ext_code.size(address(_104))
        staticcall address(_104).getTokenIndex(address arg1) with:
                gas gas_remaining wei
               args address(_110)
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg1.length
        if idx:
            _155 = mem[(32 * idx) + 128]
            require idx < arg5.length
            _161 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = uint8(ext_call.return_data[0])
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = uint8(ext_call.return_data[0])
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 292] = s
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 324] = _161
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 356] = arg6
            require ext_code.size(address(_155))
            call address(_155).swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, s, _161, arg6
        else:
            _164 = mem[(32 * idx) + 128]
            require idx < arg5.length
            _169 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = uint8(ext_call.return_data[0])
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = uint8(ext_call.return_data[0])
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 292] = arg4
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 324] = _169
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 356] = arg6
            require ext_code.size(address(_164))
            call address(_164).swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, arg4, _169, arg6
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        s = ext_call.return_data[0]
        continue 
    if not s:
        if 0 > s:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(_14))
        call address(_14).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 
                        32,
                        43,
                        0x30446f70706c65526f757465723a3a737761703a207472616e73666572205f746f6b656e42206661696c65,
                        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 463 len 21]
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 608 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(64 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 608] = arg2.length
        mem[(64 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 640 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[(64 * arg2.length) + (64 * arg1.length) + (32 * arg3.length) + (32 * arg5.length) + 640] = arg3.length
        mem[(64 * arg2.length) + (64 * arg1.length) + (32 * arg3.length) + (32 * arg5.length) + 672 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        emit SwapToken(address[] arg1, address[] arg2, address[] arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7):
                       224,
                       (32 * arg1.length) + 256,
                       (32 * arg2.length) + (32 * arg1.length) + 288,
                       arg4,
                       s,
                       arg6,
                       0,
                       arg1.length,
                       call.data[arg1 + 36 len floor32(arg1.length)],
                       mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + floor32(arg1.length) + 608 len (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + -floor32(arg1.length) + 64],
        stor101 = 1
        return s
    if protocolFee * s / s != protocolFee:
        revert with 0, 
                    32,
                    33,
                    0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 325 len 31]
    if protocolFee * s / 10^18 > s:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(address(_14))
    call address(_14).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, s - (protocolFee * s / 10^18)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 
                    32,
                    43,
                    0x30446f70706c65526f757465723a3a737761703a207472616e73666572205f746f6b656e42206661696c65,
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 463 len 21]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 608 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(64 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 608] = arg2.length
    mem[(64 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 640 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(64 * arg2.length) + (64 * arg1.length) + (32 * arg3.length) + (32 * arg5.length) + 640] = arg3.length
    mem[(64 * arg2.length) + (64 * arg1.length) + (32 * arg3.length) + (32 * arg5.length) + 672 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    emit SwapToken(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + floor32(arg1.length) + 608 len (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + -floor32(arg1.length) + 64]), (32 * arg1.length) + 256, (32 * arg2.length) + (32 * arg1.length) + 288, arg4, s - (protocolFee * s / 10^18), arg6, protocolFee * s / 10^18);
    stor101 = 1
    return (s - (protocolFee * s / 10^18))
}



}
