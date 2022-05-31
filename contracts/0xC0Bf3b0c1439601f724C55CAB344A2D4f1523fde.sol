contract main {




// =====================  Runtime code  =====================


#
#  - sub_ccfb36d5(?)
#
const _burn = 0xf000000000000000000000000000000000000000

const sub_46d08da5(?) = 0xfbc3c04845162f067a0b6f8934383e63899c3524

const sub_fe31aa80(?) = 0xc600d41b9c7656e60c0bf76d79b1532b4770d0c


array of struct _owners;
address sub_508c4631Address;
address sub_6640441eAddress;
uint256 totalMatches;
mapping of struct sub_070f2b9a;
array of struct stor5;
mapping of address ownerOfToken;
uint256 sub_c3f54ee2;
uint256 burnPercent;

function sub_070f2b9a(?) {
    require calldata.size - 4 >= 32
    return uint8(sub_070f2b9a[arg1].field_512)
}

function getBurnPercent() {
    return burnPercent
}

function totalMatches() {
    return totalMatches
}

function sub_2abe9fff(?) {
    require calldata.size - 4 >= 32
    return sub_070f2b9a[arg1].field_2048
}

function sub_323b587d(?) {
    require calldata.size - 4 >= 32
    return uint256(sub_070f2b9a[arg1].field_0)
}

function sub_35eee15b(?) {
    require calldata.size - 4 >= 32
    return sub_070f2b9a[arg1].field_1792
}

function sub_508c4631(?) {
    return sub_508c4631Address
}

function sub_55cbbdf4(?) {
    require calldata.size - 4 >= 32
    return uint256(sub_070f2b9a[arg1].field_768)
}

function sub_5664fe84(?) {
    require calldata.size - 4 >= 32
    return uint256(sub_070f2b9a[arg1].field_1280)
}

function sub_56755808(?) {
    require calldata.size - 4 >= 32
    return uint256(sub_070f2b9a[arg1].field_1024)
}

function sub_6640441e(?) {
    return sub_6640441eAddress
}

function sub_71c8cb6c(?) {
    require calldata.size - 4 >= 32
    return uint256(sub_070f2b9a[arg1].field_1536)
}

function sub_96c91348(?) {
    require calldata.size - 4 >= 32
    return uint256(sub_070f2b9a[arg1].field_256)
}

function _owners(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < _owners.length
    return _owners[arg1].field_0
}

function sub_c3f54ee2(?) {
    return sub_c3f54ee2
}

function ownerOfToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    return ownerOfToken[arg1]
}

function sub_f36cf9ca(?) {
    require calldata.size - 4 >= 32
    return uint256(sub_070f2b9a[arg1].field_0), 
           uint256(sub_070f2b9a[arg1].field_256),
           uint8(sub_070f2b9a[arg1].field_512),
           uint256(sub_070f2b9a[arg1].field_768),
           uint256(sub_070f2b9a[arg1].field_1024),
           uint256(sub_070f2b9a[arg1].field_1280),
           uint256(sub_070f2b9a[arg1].field_1536),
           sub_070f2b9a[arg1].field_1792,
           sub_070f2b9a[arg1].field_2048
}

function _fallback() payable {
    revert
}

function isOwner() {
    idx = 0
    while idx < _owners.length:
        mem[0] = 0
        if _owners[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function sub_dd866e74(?) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < stor5.length:
        require idx < stor5.length
        mem[0] = 5
        if uint256(stor5[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        return idx
    return -1
}

function sub_8348bb21(?) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < _owners.length:
        mem[0] = 0
        if _owners[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        sub_c3f54ee2 = arg1
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                34,
                0x774f6e6c7920617661696c61626c6520746f20636f6e7472616374206f776e657273,
                mem[198 len 30]
}

function sub_7b22f056(?) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < _owners.length:
        mem[0] = 0
        if _owners[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        sub_508c4631Address = arg1
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                34,
                0x774f6e6c7920617661696c61626c6520746f20636f6e7472616374206f776e657273,
                mem[198 len 30]
}

function setBurnPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < _owners.length:
        mem[0] = 0
        if _owners[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        burnPercent = arg1
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                34,
                0x774f6e6c7920617661696c61626c6520746f20636f6e7472616374206f776e657273,
                mem[198 len 30]
}

function setGraveyard(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < _owners.length:
        mem[0] = 0
        if _owners[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        sub_6640441eAddress = arg1
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                34,
                0x774f6e6c7920617661696c61626c6520746f20636f6e7472616374206f776e657273,
                mem[198 len 30]
}

function sub_e4d9d89e(?) {
    if not stor5.length:
        mem[(32 * stor5.length) + 128] = 32
        mem[(32 * stor5.length) + 160] = stor5.length
        mem[(32 * stor5.length) + 192 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
        return memory
          from (32 * stor5.length) + 128
           len (96 * stor5.length) + 64
    mem[128] = uint256(stor5.field_0)
    idx = 128
    s = 0
    while (32 * stor5.length) + 96 > idx:
        mem[idx + 32] = uint256(stor5[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor5.length) + 192 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
    return Array(len=stor5.length, data=mem[128 len floor32(stor5.length)], mem[(32 * stor5.length) + floor32(stor5.length) + 192 len (32 * stor5.length) - floor32(stor5.length)]), 
}

function getOwners() {
    if not _owners.length:
        mem[(32 * _owners.length) + 128] = 32
        mem[(32 * _owners.length) + 160] = _owners.length
        mem[(32 * _owners.length) + 192 len floor32(_owners.length)] = mem[128 len floor32(_owners.length)]
        return memory
          from (32 * _owners.length) + 128
           len (96 * _owners.length) + 64
    mem[128] = address(_owners.field_0)
    idx = 128
    s = 0
    while (32 * _owners.length) + 96 > idx:
        mem[idx + 32] = _owners[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * _owners.length) + 192 len floor32(_owners.length)] = mem[128 len floor32(_owners.length)]
    return Array(len=_owners.length, data=mem[128 len floor32(_owners.length)], mem[(32 * _owners.length) + floor32(_owners.length) + 192 len (32 * _owners.length) - floor32(_owners.length)]), 
}

function sub_1f6f99fa(?) {
    require calldata.size - 4 >= 64
    idx = 0
    while idx < _owners.length:
        mem[0] = 0
        if _owners[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
        call 0xfbc3c04845162f067a0b6f8934383e63899c3524.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
        call 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), address(arg2), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                34,
                0x774f6e6c7920617661696c61626c6520746f20636f6e7472616374206f776e657273,
                mem[198 len 30]
}

function sub_2946ffe8(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    idx = totalMatches
    while idx > 0:
        _12 = mem[64]
        mem[64] = mem[64] + 288
        mem[_12] = 0
        mem[_12 + 32] = 0
        mem[_12 + 64] = 0
        mem[_12 + 96] = 0
        mem[_12 + 128] = 0
        mem[_12 + 160] = 0
        mem[_12 + 192] = 0
        mem[_12 + 224] = 0
        mem[_12 + 256] = 0
        mem[0] = idx
        mem[32] = 4
        _16 = mem[64]
        mem[64] = mem[64] + 288
        mem[_16] = uint256(sub_070f2b9a[idx].field_0)
        mem[_16 + 32] = uint256(sub_070f2b9a[idx].field_256)
        mem[_16 + 64] = uint8(sub_070f2b9a[idx].field_512)
        mem[_16 + 96] = uint256(sub_070f2b9a[idx].field_768)
        mem[_16 + 128] = uint256(sub_070f2b9a[idx].field_1024)
        mem[_16 + 160] = uint256(sub_070f2b9a[idx].field_1280)
        mem[_16 + 192] = uint256(sub_070f2b9a[idx].field_1536)
        mem[_16 + 224] = sub_070f2b9a[idx].field_1792
        mem[_16 + 256] = sub_070f2b9a[idx].field_2048
        if uint256(sub_070f2b9a[idx].field_0) != arg1:
            if uint256(sub_070f2b9a[idx].field_256) != arg1:
                idx = idx - 1
                continue 
        return idx
    return -1
}

function setOwners(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < _owners.length:
        mem[0] = 0
        if _owners[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        _owners.length = arg1.length
        if not arg1.length:
            idx = sha3(0)
            while sha3(0) + _owners.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        else:
            s = sha3(0)
            idx = 128
            while (32 * arg1.length) + 128 > idx:
                stor[s] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = sha3(0) + (Mask(251, 0, (32 * arg1.length) + 31) >> 5)
            while sha3(0) + _owners.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
    revert with 0, 32, 34, 0x774f6e6c7920617661696c61626c6520746f20636f6e7472616374206f776e657273, mem[(32 * arg1.length) + 230 len 30]
}

function sub_4788d8d7(?) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < stor5.length:
        require idx < stor5.length
        mem[0] = 5
        if uint256(stor5[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        if idx != -1:
            revert with 0, 'Fighter already in queue'
        require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
        call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
        call 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), sub_c3f54ee2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if burnPercent > 0:
            if not sub_c3f54ee2:
                require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
                call 0xfbc3c04845162f067a0b6f8934383e63899c3524.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
                call 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), 0xf000000000000000000000000000000000000000, 0
            else:
                require sub_c3f54ee2
                if sub_c3f54ee2 * burnPercent / sub_c3f54ee2 != burnPercent:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
                call 0xfbc3c04845162f067a0b6f8934383e63899c3524.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), sub_c3f54ee2 * burnPercent / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
                call 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), 0xf000000000000000000000000000000000000000, sub_c3f54ee2 * burnPercent / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        stor5.length++
        uint256(stor5[stor5.length].field_0) = arg1
        ownerOfToken[arg1] = msg.sender
    require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
    call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
    call 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sub_c3f54ee2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if burnPercent > 0:
        if not sub_c3f54ee2:
            require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
            call 0xfbc3c04845162f067a0b6f8934383e63899c3524.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
            call 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), 0xf000000000000000000000000000000000000000, 0
        else:
            require sub_c3f54ee2
            if sub_c3f54ee2 * burnPercent / sub_c3f54ee2 != burnPercent:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
            call 0xfbc3c04845162f067a0b6f8934383e63899c3524.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), sub_c3f54ee2 * burnPercent / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
            call 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), 0xf000000000000000000000000000000000000000, sub_c3f54ee2 * burnPercent / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    stor5.length++
    uint256(stor5[stor5.length].field_0) = arg1
    ownerOfToken[arg1] = msg.sender
}

function sub_94c0c9b7(?) {
    require calldata.size - 4 >= 160
    idx = 0
    while idx < _owners.length:
        mem[0] = 0
        if _owners[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        if arg1 == arg2:
            revert with 0, 'Fighters cannot be the same.'
        require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
        staticcall 0xc600d41b9c7656e60c0bf76d79b1532b4770d0c.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x2e436f6e7472616374206e6f206c6f6e67657220686173206c6566742066696768746572,
                        mem[200 len 28]
        require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
        staticcall 0xc600d41b9c7656e60c0bf76d79b1532b4770d0c.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x2e436f6e7472616374206e6f206c6f6e676572206861732072696768742066696768746572,
                        mem[201 len 27]
        totalMatches++
        uint256(sub_070f2b9a[stor3].field_0) = arg1
        uint256(sub_070f2b9a[stor3].field_256) = arg2
        uint8(sub_070f2b9a[stor3].field_512) = arg3
        uint256(sub_070f2b9a[stor3].field_768) = 10^18 * arg4
        uint256(sub_070f2b9a[stor3].field_1024) = 10^18 * arg5
        uint256(sub_070f2b9a[stor3].field_1280) = block.number
        uint256(sub_070f2b9a[stor3].field_1536) = block.timestamp
        sub_070f2b9a[stor3].field_1792 = ownerOfToken[arg1]
        sub_070f2b9a[stor3].field_2048 = ownerOfToken[arg2]
        idx = 0
        while idx < stor5.length:
            require idx < stor5.length
            mem[0] = 5
            if uint256(stor5[idx].field_0) != arg1:
                idx = idx + 1
                continue 
            if idx == -1:
                revert with 0, 'Left fighter no longer in queue.'
            require stor5.length - 1 < stor5.length
            require idx < stor5.length
            uint256(stor5[idx].field_0) = uint256(stor5[stor5.length].field_0)
            require stor5.length
            uint256(stor5[stor5.length].field_0) = 0
            stor5.length--
            idx = 0
            while idx < stor5.length:
                require idx < stor5.length
                mem[0] = 5
                if uint256(stor5[idx].field_0) != arg2:
                    idx = idx + 1
                    continue 
                if idx == -1:
                    revert with 0, 32, 33, 0xfe52696768742066696768746572206e6f206c6f6e67657220696e207175657565, mem[1061 len 31]
                require stor5.length - 1 < stor5.length
                require idx < stor5.length
                uint256(stor5[idx].field_0) = uint256(stor5[stor5.length].field_0)
                require stor5.length
                uint256(stor5[stor5.length].field_0) = 0
                stor5.length--
                if arg3 < 0:
                    if arg3 == 3:
                        require ext_code.size(sub_508c4631Address)
                        call sub_508c4631Address.0xf69a15d with:
                             gas gas_remaining wei
                            args ownerOfToken[arg1]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                        call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_6640441eAddress, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_6640441eAddress != sub_6640441eAddress:
                            require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                            call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), sub_6640441eAddress, arg1
                        else:
                            require ext_code.size(sub_6640441eAddress)
                            call sub_6640441eAddress.0x69c2fb0 with:
                                 gas gas_remaining wei
                                args arg1, ownerOfToken[arg1]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                        staticcall 0xc600d41b9c7656e60c0bf76d79b1532b4770d0c.ownerOf(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] != sub_6640441eAddress:
                            revert with 0, 'Failed to send FUM.'
                        require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                        call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args ownerOfToken[arg2], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ownerOfToken[arg2] != sub_6640441eAddress:
                            require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                            call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), ownerOfToken[arg2], arg2
                        else:
                            require ext_code.size(sub_6640441eAddress)
                            call sub_6640441eAddress.0x69c2fb0 with:
                                 gas gas_remaining wei
                                args arg2, ownerOfToken[arg2]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                        staticcall 0xc600d41b9c7656e60c0bf76d79b1532b4770d0c.ownerOf(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] != ownerOfToken[arg2]:
                            revert with 0, 'Failed to send FUM.'
                    else:
                        if arg3 == 4:
                            require ext_code.size(sub_508c4631Address)
                            call sub_508c4631Address.0xf69a15d with:
                                 gas gas_remaining wei
                                args ownerOfToken[arg2]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                            call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_6640441eAddress, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if sub_6640441eAddress != sub_6640441eAddress:
                                require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                                call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), sub_6640441eAddress, arg2
                            else:
                                require ext_code.size(sub_6640441eAddress)
                                call sub_6640441eAddress.0x69c2fb0 with:
                                     gas gas_remaining wei
                                    args arg2, ownerOfToken[arg2]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                            staticcall 0xc600d41b9c7656e60c0bf76d79b1532b4770d0c.ownerOf(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[12 len 20] != sub_6640441eAddress:
                                revert with 0, 'Failed to send FUM.'
                            require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                            call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args ownerOfToken[arg1], arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ownerOfToken[arg1] != sub_6640441eAddress:
                                require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                                call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), ownerOfToken[arg1], arg1
                            else:
                                require ext_code.size(sub_6640441eAddress)
                                call sub_6640441eAddress.0x69c2fb0 with:
                                     gas gas_remaining wei
                                    args arg1, ownerOfToken[arg1]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                            staticcall 0xc600d41b9c7656e60c0bf76d79b1532b4770d0c.ownerOf(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[12 len 20] != ownerOfToken[arg1]:
                                revert with 0, 'Failed to send FUM.'
                else:
                    if arg3 <= 2:
                        require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                        call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args ownerOfToken[arg1], arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ownerOfToken[arg1] != sub_6640441eAddress:
                            require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                            call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), ownerOfToken[arg1], arg1
                        else:
                            require ext_code.size(sub_6640441eAddress)
                            call sub_6640441eAddress.0x69c2fb0 with:
                                 gas gas_remaining wei
                                args arg1, ownerOfToken[arg1]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                        staticcall 0xc600d41b9c7656e60c0bf76d79b1532b4770d0c.ownerOf(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] != ownerOfToken[arg1]:
                            revert with 0, 'Failed to send FUM.'
                        require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                        call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args ownerOfToken[arg2], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ownerOfToken[arg2] != sub_6640441eAddress:
                            require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                            call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), ownerOfToken[arg2], arg2
                        else:
                            require ext_code.size(sub_6640441eAddress)
                            call sub_6640441eAddress.0x69c2fb0 with:
                                 gas gas_remaining wei
                                args arg2, ownerOfToken[arg2]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                        staticcall 0xc600d41b9c7656e60c0bf76d79b1532b4770d0c.ownerOf(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] != ownerOfToken[arg2]:
                            revert with 0, 'Failed to send FUM.'
                    else:
                        if arg3 == 3:
                            require ext_code.size(sub_508c4631Address)
                            call sub_508c4631Address.0xf69a15d with:
                                 gas gas_remaining wei
                                args ownerOfToken[arg1]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                            call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_6640441eAddress, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if sub_6640441eAddress != sub_6640441eAddress:
                                require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                                call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), sub_6640441eAddress, arg1
                            else:
                                require ext_code.size(sub_6640441eAddress)
                                call sub_6640441eAddress.0x69c2fb0 with:
                                     gas gas_remaining wei
                                    args arg1, ownerOfToken[arg1]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                            staticcall 0xc600d41b9c7656e60c0bf76d79b1532b4770d0c.ownerOf(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[12 len 20] != sub_6640441eAddress:
                                revert with 0, 'Failed to send FUM.'
                            require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                            call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args ownerOfToken[arg2], arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ownerOfToken[arg2] != sub_6640441eAddress:
                                require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                                call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), ownerOfToken[arg2], arg2
                            else:
                                require ext_code.size(sub_6640441eAddress)
                                call sub_6640441eAddress.0x69c2fb0 with:
                                     gas gas_remaining wei
                                    args arg2, ownerOfToken[arg2]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                            staticcall 0xc600d41b9c7656e60c0bf76d79b1532b4770d0c.ownerOf(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[12 len 20] != ownerOfToken[arg2]:
                                revert with 0, 'Failed to send FUM.'
                        else:
                            if arg3 == 4:
                                require ext_code.size(sub_508c4631Address)
                                call sub_508c4631Address.0xf69a15d with:
                                     gas gas_remaining wei
                                    args ownerOfToken[arg2]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                                call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_6640441eAddress, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_6640441eAddress != sub_6640441eAddress:
                                    require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                                    call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), sub_6640441eAddress, arg2
                                else:
                                    require ext_code.size(sub_6640441eAddress)
                                    call sub_6640441eAddress.0x69c2fb0 with:
                                         gas gas_remaining wei
                                        args arg2, ownerOfToken[arg2]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                                staticcall 0xc600d41b9c7656e60c0bf76d79b1532b4770d0c.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[12 len 20] != sub_6640441eAddress:
                                    revert with 0, 'Failed to send FUM.'
                                require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                                call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args ownerOfToken[arg1], arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ownerOfToken[arg1] != sub_6640441eAddress:
                                    require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                                    call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), ownerOfToken[arg1], arg1
                                else:
                                    require ext_code.size(sub_6640441eAddress)
                                    call sub_6640441eAddress.0x69c2fb0 with:
                                         gas gas_remaining wei
                                        args arg1, ownerOfToken[arg1]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                                staticcall 0xc600d41b9c7656e60c0bf76d79b1532b4770d0c.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[12 len 20] != ownerOfToken[arg1]:
                                    revert with 0, 'Failed to send FUM.'
                if 10^18 * arg4 > 0:
                    require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
                    call 0xfbc3c04845162f067a0b6f8934383e63899c3524.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), 10^18 * arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
                    call 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), ownerOfToken[arg1], 10^18 * arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                if 10^18 * arg5 > 0:
                    require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
                    call 0xfbc3c04845162f067a0b6f8934383e63899c3524.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), 10^18 * arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
                    call 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), ownerOfToken[arg2], 10^18 * arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                emit 0x11e85e70: totalMatches, arg1, arg2, arg3
            revert with 0, 32, 33, 0xfe52696768742066696768746572206e6f206c6f6e67657220696e207175657565, mem[1061 len 31]
        revert with 0, 'Left fighter no longer in queue.'
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                34,
                0x774f6e6c7920617661696c61626c6520746f20636f6e7472616374206f776e657273,
                mem[198 len 30]
}



}
