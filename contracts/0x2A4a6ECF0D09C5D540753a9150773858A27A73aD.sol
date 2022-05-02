contract main {




// =====================  Runtime code  =====================


#
#  - sub_da7dec8c(?)
#
const _burn = 0xf000000000000000000000000000000000000000

const sub_46d08da5(?) = 0xfbc3c04845162f067a0b6f8934383e63899c3524

const _sushi = 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506

const sub_fbbc99ff(?) = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83

const sub_fe31aa80(?) = 0xc600d41b9c7656e60c0bf76d79b1532b4770d0c


array of struct _owners;
array of struct sub_a997a2b8;
uint256 sub_b14166b3;
uint256 sub_fb815e69;
uint256 sub_50376848;
uint256 sub_f420256b;
uint256 sub_e62619aa;
array of struct stor7;
mapping of address sub_16b6e5d4;
mapping of uint256 priceOfToken;
array of struct sub_10ebe64a;
mapping of uint256 sub_01a4ad93;

function sub_01a4ad93(?) {
    require calldata.size - 4 >= 64
    return sub_01a4ad93[arg1][address(arg2)]
}

function sub_10ebe64a(?) {
    require calldata.size - 4 >= 32
    return uint256(sub_10ebe64a[arg1].field_0)
}

function sub_16b6e5d4(?) {
    require calldata.size - 4 >= 32
    return sub_16b6e5d4[arg1]
}

function sub_1fb32b86(?) {
    return sub_50376848
}

function sub_22a90c1b(?) {
    return sub_e62619aa
}

function sub_3394177b(?) {
    return sub_fb815e69
}

function sub_50376848(?) {
    return sub_50376848
}

function sub_8277d1be(?) {
    return sub_f420256b
}

function sub_920e247f(?) {
    return stor7.length
}

function _owners(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < _owners.length
    return _owners[arg1].field_0
}

function sub_9c914171(?) {
    return sub_b14166b3
}

function sub_a997a2b8(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_a997a2b8.length
    return sub_a997a2b8[arg1].field_0
}

function sub_b14166b3(?) {
    return sub_b14166b3
}

function sub_e62619aa(?) {
    return sub_e62619aa
}

function priceOfToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    return priceOfToken[arg1]
}

function sub_f420256b(?) {
    return sub_f420256b
}

function sub_fb815e69(?) {
    return sub_fb815e69
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

function sub_6eb5d82e(?) {
    idx = 0
    while idx < sub_a997a2b8.length:
        mem[0] = 1
        if sub_a997a2b8[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function sub_79e2dd80(?) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < stor7.length:
        require idx < stor7.length
        mem[0] = 7
        if uint256(stor7[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        return idx
    return -1
}

function sub_5919d85c(?) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < stor7.length:
        require idx < stor7.length
        mem[0] = 7
        if uint256(stor7[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        if idx <= -1:
            return 0
        return 1
    return 0
}

function sub_e5479b6c(?) {
    require calldata.size - 4 >= 64
    idx = 0
    while idx < uint256(sub_10ebe64a[arg1].field_0):
        require idx < uint256(sub_10ebe64a[arg1].field_0)
        if sub_10ebe64a[arg1][idx].field_0 == arg2:
            return idx
        mem[0] = arg1
        mem[32] = 10
        idx = idx + 1
        continue 
    return -1
}

function sub_1891b642(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
    staticcall 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_e62619aa:
        return 0
    return 1
}

function setOfferFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < _owners.length:
        mem[0] = 0
        if _owners[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        sub_f420256b = arg1
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                34,
                0x6b4f6e6c7920617661696c61626c6520746f20636f6e7472616374206f776e657273,
                mem[198 len 30]
}

function setMakerFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < _owners.length:
        mem[0] = 0
        if _owners[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        sub_50376848 = arg1
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                34,
                0x6b4f6e6c7920617661696c61626c6520746f20636f6e7472616374206f776e657273,
                mem[198 len 30]
}

function setTakerFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < _owners.length:
        mem[0] = 0
        if _owners[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        sub_fb815e69 = arg1
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                34,
                0x6b4f6e6c7920617661696c61626c6520746f20636f6e7472616374206f776e657273,
                mem[198 len 30]
}

function sub_0ffff6e2(?) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < _owners.length:
        mem[0] = 0
        if _owners[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        if arg1 < 0:
            revert with 0, 'Cannot be negative.'
        sub_e62619aa = arg1
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                34,
                0x6b4f6e6c7920617661696c61626c6520746f20636f6e7472616374206f776e657273,
                mem[198 len 30]
}

function recoverFunds(uint256 arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < sub_a997a2b8.length:
        mem[0] = 1
        if sub_a997a2b8[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                37,
                0x2e4f6e6c7920617661696c61626c6520746f207265636f7665727920616464726573736573,
                mem[201 len 27]
}

function getOffers() {
    if not stor7.length:
        mem[(32 * stor7.length) + 128] = 32
        mem[(32 * stor7.length) + 160] = stor7.length
        mem[(32 * stor7.length) + 192 len floor32(stor7.length)] = mem[128 len floor32(stor7.length)]
        return memory
          from (32 * stor7.length) + 128
           len (96 * stor7.length) + 64
    mem[128] = uint256(stor7.field_0)
    idx = 128
    s = 0
    while (32 * stor7.length) + 96 > idx:
        mem[idx + 32] = uint256(stor7[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor7.length) + 192 len floor32(stor7.length)] = mem[128 len floor32(stor7.length)]
    return Array(len=stor7.length, data=mem[128 len floor32(stor7.length)], mem[(32 * stor7.length) + floor32(stor7.length) + 192 len (32 * stor7.length) - floor32(stor7.length)]), 
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

function sub_2e2b1cea(?) {
    if not sub_a997a2b8.length:
        mem[(32 * sub_a997a2b8.length) + 128] = 32
        mem[(32 * sub_a997a2b8.length) + 160] = sub_a997a2b8.length
        mem[(32 * sub_a997a2b8.length) + 192 len floor32(sub_a997a2b8.length)] = mem[128 len floor32(sub_a997a2b8.length)]
        return memory
          from (32 * sub_a997a2b8.length) + 128
           len (96 * sub_a997a2b8.length) + 64
    mem[128] = address(sub_a997a2b8.field_0)
    idx = 128
    s = 0
    while (32 * sub_a997a2b8.length) + 96 > idx:
        mem[idx + 32] = sub_a997a2b8[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_a997a2b8.length) + 192 len floor32(sub_a997a2b8.length)] = mem[128 len floor32(sub_a997a2b8.length)]
    return Array(len=sub_a997a2b8.length, data=mem[128 len floor32(sub_a997a2b8.length)], mem[(32 * sub_a997a2b8.length) + floor32(sub_a997a2b8.length) + 192 len (32 * sub_a997a2b8.length) - floor32(sub_a997a2b8.length)]), 
}

function withdrawFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < _owners.length:
        mem[0] = 0
        if _owners[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        if sub_b14166b3 < arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        48,
                        0x2e5468617420616d6f756e74206f6620746f6b656e732063616e6e6f742062652077697468647261776e207965742e2e,
                        mem[212 len 16]
        if arg1 > sub_b14166b3:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_b14166b3 -= arg1
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                34,
                0x6b4f6e6c7920617661696c61626c6520746f20636f6e7472616374206f776e657273,
                mem[198 len 30]
}

function recoverToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < sub_a997a2b8.length:
        mem[0] = 1
        if sub_a997a2b8[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
        call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
        call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                37,
                0x2e4f6e6c7920617661696c61626c6520746f207265636f7665727920616464726573736573,
                mem[201 len 27]
}

function sub_bc70f794(?) {
    require calldata.size - 4 >= 32
    if not uint256(sub_10ebe64a[arg1].field_0):
        mem[(32 * uint256(sub_10ebe64a[arg1].field_0)) + 128] = 32
        mem[(32 * uint256(sub_10ebe64a[arg1].field_0)) + 160] = uint256(sub_10ebe64a[arg1].field_0)
        mem[(32 * uint256(sub_10ebe64a[arg1].field_0)) + 192 len floor32(uint256(sub_10ebe64a[arg1].field_0))] = mem[128 len floor32(uint256(sub_10ebe64a[arg1].field_0))]
        return memory
          from (32 * uint256(sub_10ebe64a[arg1].field_0)) + 128
           len (96 * uint256(sub_10ebe64a[arg1].field_0)) + 64
    mem[128] = sub_10ebe64a[arg1].field_0
    idx = 128
    s = 0
    while (32 * uint256(sub_10ebe64a[arg1].field_0)) + 96 > idx:
        mem[idx + 32] = sub_10ebe64a[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * uint256(sub_10ebe64a[arg1].field_0)) + 192 len floor32(uint256(sub_10ebe64a[arg1].field_0))] = mem[128 len floor32(uint256(sub_10ebe64a[arg1].field_0))]
    return Array(len=uint256(sub_10ebe64a[arg1].field_0), data=mem[128 len floor32(uint256(sub_10ebe64a[arg1].field_0))], mem[(32 * uint256(sub_10ebe64a[arg1].field_0)) + floor32(uint256(sub_10ebe64a[arg1].field_0)) + 192 len (32 * uint256(sub_10ebe64a[arg1].field_0)) - floor32(uint256(sub_10ebe64a[arg1].field_0))]), 
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
    revert with 0, 32, 34, 0x6b4f6e6c7920617661696c61626c6520746f20636f6e7472616374206f776e657273, mem[(32 * arg1.length) + 230 len 30]
}

function sub_daca94e8(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < sub_a997a2b8.length:
        mem[0] = 1
        if sub_a997a2b8[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        sub_a997a2b8.length = arg1.length
        if not arg1.length:
            idx = sha3(1)
            while sha3(1) + sub_a997a2b8.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        else:
            s = sha3(1)
            idx = 128
            while (32 * arg1.length) + 128 > idx:
                stor[s] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = sha3(1) + (Mask(251, 0, (32 * arg1.length) + 31) >> 5)
            while sha3(1) + sub_a997a2b8.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
    revert with 0, 
                32,
                37,
                0x2e4f6e6c7920617661696c61626c6520746f207265636f7665727920616464726573736573,
                mem[(32 * arg1.length) + 233 len 27]
}

function sub_89a59941(?) {
    require calldata.size - 4 >= 32
    if priceOfToken[arg1] <= 0:
        revert with 0, 'Token is not for sale'
    idx = 0
    while idx < uint256(sub_10ebe64a[arg1].field_0):
        require idx < uint256(sub_10ebe64a[arg1].field_0)
        if sub_10ebe64a[arg1][idx].field_0 != msg.sender:
            mem[0] = arg1
            mem[32] = 10
            idx = idx + 1
            continue 
        if idx <= -1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x4f4e6f20636f756e746572206f66666572206578697374732066726f6d20796f757220616464726573,
                        mem[205 len 23]
        call msg.sender with:
           value (100 * sub_01a4ad93[arg1][address(msg.sender)]) + (sub_fb815e69 * sub_01a4ad93[arg1][address(msg.sender)]) / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < uint256(sub_10ebe64a[arg1].field_0):
            require idx < uint256(sub_10ebe64a[arg1].field_0)
            if sub_10ebe64a[arg1][idx].field_0 != msg.sender:
                mem[0] = arg1
                mem[32] = 10
                idx = idx + 1
                continue 
            if idx != -1:
                require uint256(sub_10ebe64a[arg1].field_0) - 1 < uint256(sub_10ebe64a[arg1].field_0)
                require idx < uint256(sub_10ebe64a[arg1].field_0)
                sub_10ebe64a[arg1][idx].field_0 = sub_10ebe64a[arg1][uint256(sub_10ebe64a[arg1].field_0)].field_0
                require uint256(sub_10ebe64a[arg1].field_0)
                sub_10ebe64a[arg1][uint256(sub_10ebe64a[arg1].field_0)].field_0 = 0
                uint256(sub_10ebe64a[arg1].field_0)--
            sub_01a4ad93[arg1][address(msg.sender)] = 0
            emit 0x33559b7a: arg1, msg.sender
        sub_01a4ad93[arg1][address(msg.sender)] = 0
        emit 0x33559b7a: arg1, msg.sender
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                41,
                0x4f4e6f20636f756e746572206f66666572206578697374732066726f6d20796f757220616464726573,
                mem[205 len 23]
}

function cancelOffer(uint256 arg1) {
    require calldata.size - 4 >= 32
    if priceOfToken[arg1] <= 0:
        revert with 0, 'Token is not for sale'
    if sub_16b6e5d4[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e596f7520617265206e6f7420746865206f776e6572206f6620746869732066616e7475,
                    mem[200 len 28]
    require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
    call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_16b6e5d4[arg1], arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[132] = sub_16b6e5d4[arg1]
    mem[164] = arg1
    require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
    call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), sub_16b6e5d4[arg1], arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < stor7.length:
        require idx < stor7.length
        mem[0] = 7
        if uint256(stor7[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        if idx != -1:
            require stor7.length - 1 < stor7.length
            require idx < stor7.length
            uint256(stor7[idx].field_0) = uint256(stor7[stor7.length].field_0)
            require stor7.length
            uint256(stor7[stor7.length].field_0) = 0
            stor7.length--
        sub_16b6e5d4[arg1] = 0
        priceOfToken[arg1] = 0
        if uint256(sub_10ebe64a[arg1].field_0):
            mem[128 len 32 * uint256(sub_10ebe64a[arg1].field_0)] = code.data[24264 len 32 * uint256(sub_10ebe64a[arg1].field_0)]
        idx = 0
        while idx < uint256(sub_10ebe64a[arg1].field_0):
            require idx < uint256(sub_10ebe64a[arg1].field_0)
            require idx < uint256(sub_10ebe64a[arg1].field_0)
            mem[(32 * idx) + 128] = sub_10ebe64a[arg1][idx].field_0
            call sub_10ebe64a[arg1][idx].field_0 with:
               value (100 * sub_01a4ad93[arg1][stor10[arg1][idx].field_0]) + (sub_50376848 * sub_01a4ad93[arg1][stor10[arg1][idx].field_0]) / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = arg1
            mem[32] = 10
            idx = idx + 1
            continue 
        idx = 0
        while idx < uint256(sub_10ebe64a[arg1].field_0):
            require idx < uint256(sub_10ebe64a[arg1].field_0)
            mem[0] = arg1
            mem[32] = 10
            s = 0
            while s < uint256(sub_10ebe64a[arg1].field_0):
                require s < uint256(sub_10ebe64a[arg1].field_0)
                if sub_10ebe64a[arg1][s].field_0 != mem[(32 * idx) + 140 len 20]:
                    mem[0] = arg1
                    mem[32] = 10
                    s = s + 1
                    continue 
                if s != -1:
                    require uint256(sub_10ebe64a[arg1].field_0) - 1 < uint256(sub_10ebe64a[arg1].field_0)
                    require s < uint256(sub_10ebe64a[arg1].field_0)
                    sub_10ebe64a[arg1][s].field_0 = sub_10ebe64a[arg1][uint256(sub_10ebe64a[arg1].field_0)].field_0
                    require uint256(sub_10ebe64a[arg1].field_0)
                    sub_10ebe64a[arg1][uint256(sub_10ebe64a[arg1].field_0)].field_0 = 0
                    uint256(sub_10ebe64a[arg1].field_0)--
                mem[0] = arg1
                mem[32] = 10
                idx = idx + 1
                continue 
            idx = idx + 1
            continue 
        require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
        staticcall 0xc600d41b9c7656e60c0bf76d79b1532b4770d0c.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) != msg.sender:
            revert with 0, 
                        32,
                        38,
                        0x774f776e657220646964206e6f74207265636569766520746865697220746f6b656e20626163,
                        mem[(32 * uint256(sub_10ebe64a[arg1].field_0)) + 234 len 26]
        emit 0x12036dda: arg1, msg.sender
    sub_16b6e5d4[arg1] = 0
    priceOfToken[arg1] = 0
    if uint256(sub_10ebe64a[arg1].field_0):
        mem[128 len 32 * uint256(sub_10ebe64a[arg1].field_0)] = code.data[24264 len 32 * uint256(sub_10ebe64a[arg1].field_0)]
    idx = 0
    while idx < uint256(sub_10ebe64a[arg1].field_0):
        require idx < uint256(sub_10ebe64a[arg1].field_0)
        require idx < uint256(sub_10ebe64a[arg1].field_0)
        mem[(32 * idx) + 128] = sub_10ebe64a[arg1][idx].field_0
        call sub_10ebe64a[arg1][idx].field_0 with:
           value (100 * sub_01a4ad93[arg1][stor10[arg1][idx].field_0]) + (sub_50376848 * sub_01a4ad93[arg1][stor10[arg1][idx].field_0]) / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = arg1
        mem[32] = 10
        idx = idx + 1
        continue 
    idx = 0
    while idx < uint256(sub_10ebe64a[arg1].field_0):
        require idx < uint256(sub_10ebe64a[arg1].field_0)
        mem[0] = arg1
        mem[32] = 10
        s = 0
        while s < uint256(sub_10ebe64a[arg1].field_0):
            require s < uint256(sub_10ebe64a[arg1].field_0)
            if sub_10ebe64a[arg1][s].field_0 != mem[(32 * idx) + 140 len 20]:
                mem[0] = arg1
                mem[32] = 10
                s = s + 1
                continue 
            if s != -1:
                require uint256(sub_10ebe64a[arg1].field_0) - 1 < uint256(sub_10ebe64a[arg1].field_0)
                require s < uint256(sub_10ebe64a[arg1].field_0)
                sub_10ebe64a[arg1][s].field_0 = sub_10ebe64a[arg1][uint256(sub_10ebe64a[arg1].field_0)].field_0
                require uint256(sub_10ebe64a[arg1].field_0)
                sub_10ebe64a[arg1][uint256(sub_10ebe64a[arg1].field_0)].field_0 = 0
                uint256(sub_10ebe64a[arg1].field_0)--
            mem[0] = arg1
            mem[32] = 10
            idx = idx + 1
            continue 
        idx = idx + 1
        continue 
    require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
    staticcall 0xc600d41b9c7656e60c0bf76d79b1532b4770d0c.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, 
                    32,
                    38,
                    0x774f776e657220646964206e6f74207265636569766520746865697220746f6b656e20626163,
                    mem[(32 * uint256(sub_10ebe64a[arg1].field_0)) + 234 len 26]
    emit 0x12036dda: arg1, msg.sender
}

function offer(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
    staticcall 0xc600d41b9c7656e60c0bf76d79b1532b4770d0c.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x2e53656e646572206d757374206f776e2074686520746f6b656e206265696e67206f66666572656420666f722073616c,
                    mem[212 len 16]
    mem[0] = arg1
    mem[32] = 9
    if priceOfToken[arg1]:
        revert with 0, 'Token is already for sale'
    if arg2 <= 0:
        revert with 0, 'Ask price cannot be negative'
    require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
    staticcall 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_e62619aa:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x214e6f7420656e6f75676820464f4f20696e20796f75722077616c6c657420746f206d616b65206f66666572732e2e,
                    mem[211 len 17]
    if msg.value < arg2 * sub_f420256b / 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x2e4e6f7420656e6f7567682046544d2073656e7420746f20706c616365206f66666572,
                    mem[199 len 29]
    if arg2 * sub_f420256b / 100 > msg.value:
        revert with 0, 'SafeMath: subtraction overflow'
    if msg.value - (arg2 * sub_f420256b / 100) <= 0:
        if eth.balance(this.address) < arg2 * sub_f420256b / 100 / 2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x724e6f7420656e6f7567682046544d206f6e20636f6e747261637420746f2062757920464f,
                        mem[201 len 27]
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.deposit() with:
           value arg2 * sub_f420256b / 100 / 2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'Was not able to wrap FTM.'
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 2
        mem[128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[160] = 0xfbc3c04845162f067a0b6f8934383e63899c3524
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = ext_call.return_data[0]
        mem[228] = 0
        mem[292] = this.address
        mem[324] = block.timestamp
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
        call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _174 = mem[192 len 4], ext_call.return_data[0 len 28]
        require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
        _180 = mem[_174 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_174 + 192])] = mem[_174 + 224 len floor32(mem[_174 + 192])]
        mem[64] = (32 * _180) + ceil32(return_data.size) + 224
        require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
        if mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224] <= 0:
            revert with 0, 
                        32,
                        55,
                        0x214e6f20464f4f20776173207075726368617365642c20616374696f6e206e6f7420706f737369626c6520617420746869732074696d65,
                        mem[(32 * _180) + ceil32(return_data.size) + 347 len 9]
        require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
        call 0xfbc3c04845162f067a0b6f8934383e63899c3524.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
        call 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), 0xf000000000000000000000000000000000000000, mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
        staticcall 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        67,
                        0x2e446964206e6f74207375636365737366756c6c79206275726e20746f6b656e732c20616374696f6e206e6f7420706f737369626c6520617420746869732074696d65,
                        mem[(32 * _180) + ceil32(return_data.size) + 359 len 29]
    else:
        call msg.sender with:
           value msg.value - (arg2 * sub_f420256b / 100) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) < arg2 * sub_f420256b / 100 / 2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x724e6f7420656e6f7567682046544d206f6e20636f6e747261637420746f2062757920464f,
                        mem[201 len 27]
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.deposit() with:
           value arg2 * sub_f420256b / 100 / 2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'Was not able to wrap FTM.'
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 2
        mem[128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[160] = 0xfbc3c04845162f067a0b6f8934383e63899c3524
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = ext_call.return_data[0]
        mem[228] = 0
        mem[292] = this.address
        mem[324] = block.timestamp
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
        call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _176 = mem[192 len 4], ext_call.return_data[0 len 28]
        require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
        _181 = mem[_176 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_176 + 192])] = mem[_176 + 224 len floor32(mem[_176 + 192])]
        mem[64] = (32 * _181) + ceil32(return_data.size) + 224
        require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
        if mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224] <= 0:
            revert with 0, 
                        32,
                        55,
                        0x214e6f20464f4f20776173207075726368617365642c20616374696f6e206e6f7420706f737369626c6520617420746869732074696d65,
                        mem[(32 * _181) + ceil32(return_data.size) + 347 len 9]
        require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
        call 0xfbc3c04845162f067a0b6f8934383e63899c3524.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
        call 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), 0xf000000000000000000000000000000000000000, mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
        staticcall 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        67,
                        0x2e446964206e6f74207375636365737366756c6c79206275726e20746f6b656e732c20616374696f6e206e6f7420706f737369626c6520617420746869732074696d65,
                        mem[(32 * _181) + ceil32(return_data.size) + 359 len 29]
    ('iszero', ('ext_call.return_data', 0, 32))
    if arg2 * sub_f420256b / 100 / 2 > arg2 * sub_f420256b / 100:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_b14166b3 + (arg2 * sub_f420256b / 100) - (arg2 * sub_f420256b / 100 / 2) < sub_b14166b3:
        revert with 0, 'SafeMath: addition overflow'
    sub_b14166b3 = sub_b14166b3 + (arg2 * sub_f420256b / 100) - (arg2 * sub_f420256b / 100 / 2)
    emit 0x34d6c12e: (arg2 * sub_f420256b / 100 / 2)
    if arg2 * sub_f420256b / 100 / 2 > arg2 * sub_f420256b / 100:
        revert with 0, 'SafeMath: subtraction overflow'
    emit 0x173aa68f: ((arg2 * sub_f420256b / 100) - (arg2 * sub_f420256b / 100 / 2))
    require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
    call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor7.length++
    uint256(stor7[stor7.length].field_0) = arg1
    sub_16b6e5d4[arg1] = msg.sender
    priceOfToken[arg1] = arg2
    require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
    staticcall 0xc600d41b9c7656e60c0bf76d79b1532b4770d0c.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Exchange did not receive token'
    emit 0x2d57124c: arg1, msg.sender, arg2
}

function sub_e47e5527(?) payable {
    require calldata.size - 4 >= 32
    if priceOfToken[arg1] <= 0:
        revert with 0, 'Token is not for sale'
    if msg.value <= 0:
        revert with 0, 'No funds sent to counter offer'
    if sub_01a4ad93[arg1][address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x73596f7520616c72656164792068617665206120636f756e746572206f666665722c2063616e63656c206974206669727374,
                    mem[214 len 14]
    require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
    staticcall 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_e62619aa:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x214e6f7420656e6f75676820464f4f20696e20796f75722077616c6c657420746f206d616b65206f66666572732e2e,
                    mem[211 len 17]
    require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
    staticcall 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x70a08231 with:
            gas gas_remaining wei
           args sub_16b6e5d4[arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_e62619aa:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0xfe536f7272792c2073656c6c6572206973206e6f206c6f6e67657220656c696769626c6520746f2073656c6c2046616e74756d73,
                    mem[216 len 12]
    if sub_50376848 + sub_f420256b + 100 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_50376848 + sub_f420256b + 100
    if not msg.value / sub_50376848 + sub_f420256b + 100:
        mem[0] = arg1
        mem[32] = 9
        if 0 >= priceOfToken[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x6d4f6666657220697320746f6f20676f6f642c2064696420796f75206d616b652061206d697374616b65,
                        mem[206 len 22]
        if eth.balance(this.address) < 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x724e6f7420656e6f7567682046544d206f6e20636f6e747261637420746f2062757920464f,
                        mem[201 len 27]
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.deposit() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'Was not able to wrap FTM.'
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 2
        mem[128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[160] = 0xfbc3c04845162f067a0b6f8934383e63899c3524
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = ext_call.return_data[0]
        mem[228] = 0
        mem[292] = this.address
        mem[324] = block.timestamp
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
        call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _167 = mem[192 len 4], ext_call.return_data[0 len 28]
        require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
        _172 = mem[_167 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_167 + 192])] = mem[_167 + 224 len floor32(mem[_167 + 192])]
        mem[64] = (32 * _172) + ceil32(return_data.size) + 224
        require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
        if mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224] <= 0:
            revert with 0, 
                        32,
                        55,
                        0x214e6f20464f4f20776173207075726368617365642c20616374696f6e206e6f7420706f737369626c6520617420746869732074696d65,
                        mem[(32 * _172) + ceil32(return_data.size) + 347 len 9]
        require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
        call 0xfbc3c04845162f067a0b6f8934383e63899c3524.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
        call 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), 0xf000000000000000000000000000000000000000, mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
        staticcall 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        67,
                        0x2e446964206e6f74207375636365737366756c6c79206275726e20746f6b656e732c20616374696f6e206e6f7420706f737369626c6520617420746869732074696d65,
                        mem[(32 * _172) + ceil32(return_data.size) + 359 len 29]
        if sub_b14166b3 < sub_b14166b3:
            revert with 0, 'SafeMath: addition overflow'
        emit 0x34d6c12e: 0
        emit 0x173aa68f: 0
        uint256(sub_10ebe64a[arg1].field_0)++
        sub_10ebe64a[arg1][uint256(sub_10ebe64a[arg1].field_0)].field_0 = msg.sender
        sub_01a4ad93[arg1][address(msg.sender)] = 0
        emit 0xa9e1abba: arg1, msg.sender, 0
    else:
        require msg.value / sub_50376848 + sub_f420256b + 100
        if 100 * msg.value / sub_50376848 + sub_f420256b + 100 / msg.value / sub_50376848 + sub_f420256b + 100 != 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[0] = arg1
        mem[32] = 9
        if 100 * msg.value / sub_50376848 + sub_f420256b + 100 >= priceOfToken[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x6d4f6666657220697320746f6f20676f6f642c2064696420796f75206d616b652061206d697374616b65,
                        mem[206 len 22]
        if eth.balance(this.address) < 100 * msg.value / sub_50376848 + sub_f420256b + 100 * sub_f420256b / 100 / 2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x724e6f7420656e6f7567682046544d206f6e20636f6e747261637420746f2062757920464f,
                        mem[201 len 27]
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.deposit() with:
           value 100 * msg.value / sub_50376848 + sub_f420256b + 100 * sub_f420256b / 100 / 2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'Was not able to wrap FTM.'
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 2
        mem[128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[160] = 0xfbc3c04845162f067a0b6f8934383e63899c3524
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = ext_call.return_data[0]
        mem[228] = 0
        mem[292] = this.address
        mem[324] = block.timestamp
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
        call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _165 = mem[192 len 4], ext_call.return_data[0 len 28]
        require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
        _171 = mem[_165 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_165 + 192])] = mem[_165 + 224 len floor32(mem[_165 + 192])]
        mem[64] = (32 * _171) + ceil32(return_data.size) + 224
        require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
        if mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224] <= 0:
            revert with 0, 
                        32,
                        55,
                        0x214e6f20464f4f20776173207075726368617365642c20616374696f6e206e6f7420706f737369626c6520617420746869732074696d65,
                        mem[(32 * _171) + ceil32(return_data.size) + 347 len 9]
        require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
        call 0xfbc3c04845162f067a0b6f8934383e63899c3524.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
        call 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), 0xf000000000000000000000000000000000000000, mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
        staticcall 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        67,
                        0x2e446964206e6f74207375636365737366756c6c79206275726e20746f6b656e732c20616374696f6e206e6f7420706f737369626c6520617420746869732074696d65,
                        mem[(32 * _171) + ceil32(return_data.size) + 359 len 29]
        if 100 * msg.value / sub_50376848 + sub_f420256b + 100 * sub_f420256b / 100 / 2 > 100 * msg.value / sub_50376848 + sub_f420256b + 100 * sub_f420256b / 100:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_b14166b3 + (100 * msg.value / sub_50376848 + sub_f420256b + 100 * sub_f420256b / 100) - (100 * msg.value / sub_50376848 + sub_f420256b + 100 * sub_f420256b / 100 / 2) < sub_b14166b3:
            revert with 0, 'SafeMath: addition overflow'
        sub_b14166b3 = sub_b14166b3 + (100 * msg.value / sub_50376848 + sub_f420256b + 100 * sub_f420256b / 100) - (100 * msg.value / sub_50376848 + sub_f420256b + 100 * sub_f420256b / 100 / 2)
        emit 0x34d6c12e: (100 * msg.value / sub_50376848 + sub_f420256b + 100 * sub_f420256b / 100 / 2)
        if 100 * msg.value / sub_50376848 + sub_f420256b + 100 * sub_f420256b / 100 / 2 > 100 * msg.value / sub_50376848 + sub_f420256b + 100 * sub_f420256b / 100:
            revert with 0, 'SafeMath: subtraction overflow'
        emit 0x173aa68f: ((100 * msg.value / sub_50376848 + sub_f420256b + 100 * sub_f420256b / 100) - (100 * msg.value / sub_50376848 + sub_f420256b + 100 * sub_f420256b / 100 / 2))
        uint256(sub_10ebe64a[arg1].field_0)++
        sub_10ebe64a[arg1][uint256(sub_10ebe64a[arg1].field_0)].field_0 = msg.sender
        sub_01a4ad93[arg1][address(msg.sender)] = 100 * msg.value / sub_50376848 + sub_f420256b + 100
        emit 0xa9e1abba: arg1, msg.sender, 100 * msg.value / sub_50376848 + sub_f420256b + 100
}

function acceptOffer(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if priceOfToken[arg1] <= 0:
        revert with 0, 'Token is not for sale'
    if msg.value < (100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100:
        revert with 0, 'Not enough FTM sent to purchase'
    mem[0] = arg1
    mem[32] = 8
    require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
    staticcall 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x70a08231 with:
            gas gas_remaining wei
           args sub_16b6e5d4[arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_e62619aa:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0xfe536f7272792c2073656c6c6572206973206e6f206c6f6e67657220656c696769626c6520746f2073656c6c2046616e74756d73,
                    mem[216 len 12]
    if (100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100 > msg.value:
        revert with 0, 'SafeMath: subtraction overflow'
    if msg.value - ((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) <= 0:
        if sub_50376848 + 100 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_50376848 + 100
        if not priceOfToken[arg1] / sub_50376848 + 100:
            call sub_16b6e5d4[arg1] with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
            call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
            call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 > priceOfToken[arg1]:
                revert with 0, 'SafeMath: subtraction overflow'
            if priceOfToken[arg1] > (100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100:
                revert with 0, 'SafeMath: subtraction overflow'
            if (100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100 < ((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - priceOfToken[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            if eth.balance(this.address) < (100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100 / 2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x724e6f7420656e6f7567682046544d206f6e20636f6e747261637420746f2062757920464f,
                            mem[201 len 27]
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.deposit() with:
               value (100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100 / 2 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                revert with 0, 'Was not able to wrap FTM.'
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = 2
            mem[128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[160] = 0xfbc3c04845162f067a0b6f8934383e63899c3524
            mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[196] = ext_call.return_data[0]
            mem[228] = 0
            mem[292] = this.address
            mem[324] = block.timestamp
            mem[260] = 160
            mem[356] = 2
            mem[388 len 0] = None
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _836 = mem[192 len 4], ext_call.return_data[0 len 28]
            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
            _847 = mem[_836 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_836 + 192])] = mem[_836 + 224 len floor32(mem[_836 + 192])]
            mem[64] = (32 * _847) + ceil32(return_data.size) + 224
            require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
            _1495 = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
            if mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224] <= 0:
                revert with 0, 
                            32,
                            55,
                            0x214e6f20464f4f20776173207075726368617365642c20616374696f6e206e6f7420706f737369626c6520617420746869732074696d65,
                            mem[(32 * _847) + ceil32(return_data.size) + 347 len 9]
            require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
            call 0xfbc3c04845162f067a0b6f8934383e63899c3524.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _847) + ceil32(return_data.size) + 260] = 0xf000000000000000000000000000000000000000
            mem[(32 * _847) + ceil32(return_data.size) + 292] = _1495
            require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
            call 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), 0xf000000000000000000000000000000000000000, _1495
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
            staticcall 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            67,
                            0x2e446964206e6f74207375636365737366756c6c79206275726e20746f6b656e732c20616374696f6e206e6f7420706f737369626c6520617420746869732074696d65,
                            mem[(32 * _847) + ceil32(return_data.size) + 359 len 29]
            if (100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100 / 2 > (100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b14166b3 + ((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - ((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100 / 2) < sub_b14166b3:
                revert with 0, 'SafeMath: addition overflow'
            sub_b14166b3 = sub_b14166b3 + ((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - ((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100 / 2)
            emit 0x34d6c12e: ((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100 / 2)
            if (100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100 / 2 > (100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100:
                revert with 0, 'SafeMath: subtraction overflow'
            emit 0x173aa68f: (((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - ((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100 / 2))
            idx = 0
            while idx < stor7.length:
                require idx < stor7.length
                mem[0] = 7
                if uint256(stor7[idx].field_0) != arg1:
                    idx = idx + 1
                    continue 
                if idx != -1:
                    require stor7.length - 1 < stor7.length
                    require idx < stor7.length
                    uint256(stor7[idx].field_0) = uint256(stor7[stor7.length].field_0)
                    require stor7.length
                    uint256(stor7[stor7.length].field_0) = 0
                    stor7.length--
                sub_16b6e5d4[arg1] = 0
                priceOfToken[arg1] = 0
                if uint256(sub_10ebe64a[arg1].field_0):
                    mem[(32 * _847) + ceil32(return_data.size) + 256 len 32 * uint256(sub_10ebe64a[arg1].field_0)] = code.data[24264 len 32 * uint256(sub_10ebe64a[arg1].field_0)]
                idx = 0
                while idx < uint256(sub_10ebe64a[arg1].field_0):
                    require idx < uint256(sub_10ebe64a[arg1].field_0)
                    require idx < uint256(sub_10ebe64a[arg1].field_0)
                    mem[(32 * idx) + (32 * _847) + ceil32(return_data.size) + 256] = sub_10ebe64a[arg1][idx].field_0
                    call sub_10ebe64a[arg1][idx].field_0 with:
                       value (100 * sub_01a4ad93[arg1][stor10[arg1][idx].field_0]) + (sub_50376848 * sub_01a4ad93[arg1][stor10[arg1][idx].field_0]) / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[0] = arg1
                    mem[32] = 10
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < uint256(sub_10ebe64a[arg1].field_0):
                    require idx < uint256(sub_10ebe64a[arg1].field_0)
                    mem[0] = arg1
                    mem[32] = 10
                    s = 0
                    while s < uint256(sub_10ebe64a[arg1].field_0):
                        require s < uint256(sub_10ebe64a[arg1].field_0)
                        if sub_10ebe64a[arg1][s].field_0 != mem[(32 * idx) + (32 * _847) + ceil32(return_data.size) + 268 len 20]:
                            mem[0] = arg1
                            mem[32] = 10
                            s = s + 1
                            continue 
                        if s != -1:
                            require uint256(sub_10ebe64a[arg1].field_0) - 1 < uint256(sub_10ebe64a[arg1].field_0)
                            require s < uint256(sub_10ebe64a[arg1].field_0)
                            sub_10ebe64a[arg1][s].field_0 = sub_10ebe64a[arg1][uint256(sub_10ebe64a[arg1].field_0)].field_0
                            require uint256(sub_10ebe64a[arg1].field_0)
                            sub_10ebe64a[arg1][uint256(sub_10ebe64a[arg1].field_0)].field_0 = 0
                            uint256(sub_10ebe64a[arg1].field_0)--
                        mem[0] = arg1
                        mem[32] = 10
                        idx = idx + 1
                        continue 
                    idx = idx + 1
                    continue 
                require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                staticcall 0xc600d41b9c7656e60c0bf76d79b1532b4770d0c.ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) != msg.sender:
                    revert with 0, 'Buyer did not receive token'
                emit 0x5c8e1dca: arg1, sub_16b6e5d4[arg1], msg.sender, priceOfToken[arg1]
            sub_16b6e5d4[arg1] = 0
            priceOfToken[arg1] = 0
            if uint256(sub_10ebe64a[arg1].field_0):
                mem[(32 * _847) + ceil32(return_data.size) + 256 len 32 * uint256(sub_10ebe64a[arg1].field_0)] = code.data[24264 len 32 * uint256(sub_10ebe64a[arg1].field_0)]
            idx = 0
            while idx < uint256(sub_10ebe64a[arg1].field_0):
                require idx < uint256(sub_10ebe64a[arg1].field_0)
                require idx < uint256(sub_10ebe64a[arg1].field_0)
                mem[(32 * idx) + (32 * _847) + ceil32(return_data.size) + 256] = sub_10ebe64a[arg1][idx].field_0
                call sub_10ebe64a[arg1][idx].field_0 with:
                   value (100 * sub_01a4ad93[arg1][stor10[arg1][idx].field_0]) + (sub_50376848 * sub_01a4ad93[arg1][stor10[arg1][idx].field_0]) / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = arg1
                mem[32] = 10
                idx = idx + 1
                continue 
            idx = 0
            while idx < uint256(sub_10ebe64a[arg1].field_0):
                require idx < uint256(sub_10ebe64a[arg1].field_0)
                mem[0] = arg1
                mem[32] = 10
                s = 0
                while s < uint256(sub_10ebe64a[arg1].field_0):
                    require s < uint256(sub_10ebe64a[arg1].field_0)
                    if sub_10ebe64a[arg1][s].field_0 != mem[(32 * idx) + (32 * _847) + ceil32(return_data.size) + 268 len 20]:
                        mem[0] = arg1
                        mem[32] = 10
                        s = s + 1
                        continue 
                    if s != -1:
                        require uint256(sub_10ebe64a[arg1].field_0) - 1 < uint256(sub_10ebe64a[arg1].field_0)
                        require s < uint256(sub_10ebe64a[arg1].field_0)
                        sub_10ebe64a[arg1][s].field_0 = sub_10ebe64a[arg1][uint256(sub_10ebe64a[arg1].field_0)].field_0
                        require uint256(sub_10ebe64a[arg1].field_0)
                        sub_10ebe64a[arg1][uint256(sub_10ebe64a[arg1].field_0)].field_0 = 0
                        uint256(sub_10ebe64a[arg1].field_0)--
                    mem[0] = arg1
                    mem[32] = 10
                    idx = idx + 1
                    continue 
                idx = idx + 1
                continue 
        else:
            require priceOfToken[arg1] / sub_50376848 + 100
            if 100 * priceOfToken[arg1] / sub_50376848 + 100 / priceOfToken[arg1] / sub_50376848 + 100 != 100:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            call sub_16b6e5d4[arg1] with:
               value 100 * priceOfToken[arg1] / sub_50376848 + 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
            call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
            call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 100 * priceOfToken[arg1] / sub_50376848 + 100 > priceOfToken[arg1]:
                revert with 0, 'SafeMath: subtraction overflow'
            if priceOfToken[arg1] > (100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100:
                revert with 0, 'SafeMath: subtraction overflow'
            if -100 * priceOfToken[arg1] / sub_50376848 + 100 < -priceOfToken[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            if eth.balance(this.address) < ((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - (100 * priceOfToken[arg1] / sub_50376848 + 100) / 2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x724e6f7420656e6f7567682046544d206f6e20636f6e747261637420746f2062757920464f,
                            mem[201 len 27]
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.deposit() with:
               value ((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - (100 * priceOfToken[arg1] / sub_50376848 + 100) / 2 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                revert with 0, 'Was not able to wrap FTM.'
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = 2
            mem[128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[160] = 0xfbc3c04845162f067a0b6f8934383e63899c3524
            mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[196] = ext_call.return_data[0]
            mem[228] = 0
            mem[292] = this.address
            mem[324] = block.timestamp
            mem[260] = 160
            mem[356] = 2
            mem[388 len 0] = None
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _834 = mem[192 len 4], ext_call.return_data[0 len 28]
            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
            _846 = mem[_834 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_834 + 192])] = mem[_834 + 224 len floor32(mem[_834 + 192])]
            mem[64] = (32 * _846) + ceil32(return_data.size) + 224
            require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
            _1494 = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
            if mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224] <= 0:
                revert with 0, 
                            32,
                            55,
                            0x214e6f20464f4f20776173207075726368617365642c20616374696f6e206e6f7420706f737369626c6520617420746869732074696d65,
                            mem[(32 * _846) + ceil32(return_data.size) + 347 len 9]
            require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
            call 0xfbc3c04845162f067a0b6f8934383e63899c3524.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _846) + ceil32(return_data.size) + 260] = 0xf000000000000000000000000000000000000000
            mem[(32 * _846) + ceil32(return_data.size) + 292] = _1494
            require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
            call 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), 0xf000000000000000000000000000000000000000, _1494
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
            staticcall 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            67,
                            0x2e446964206e6f74207375636365737366756c6c79206275726e20746f6b656e732c20616374696f6e206e6f7420706f737369626c6520617420746869732074696d65,
                            mem[(32 * _846) + ceil32(return_data.size) + 359 len 29]
            if ((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - (100 * priceOfToken[arg1] / sub_50376848 + 100) / 2 > ((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - (100 * priceOfToken[arg1] / sub_50376848 + 100):
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b14166b3 + ((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - (100 * priceOfToken[arg1] / sub_50376848 + 100) - (((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - (100 * priceOfToken[arg1] / sub_50376848 + 100) / 2) < sub_b14166b3:
                revert with 0, 'SafeMath: addition overflow'
            sub_b14166b3 = sub_b14166b3 + ((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - (100 * priceOfToken[arg1] / sub_50376848 + 100) - (((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - (100 * priceOfToken[arg1] / sub_50376848 + 100) / 2)
            emit 0x34d6c12e: (((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - (100 * priceOfToken[arg1] / sub_50376848 + 100) / 2)
            if ((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - (100 * priceOfToken[arg1] / sub_50376848 + 100) / 2 > ((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - (100 * priceOfToken[arg1] / sub_50376848 + 100):
                revert with 0, 'SafeMath: subtraction overflow'
            emit 0x173aa68f: (((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - (100 * priceOfToken[arg1] / sub_50376848 + 100) - (((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - (100 * priceOfToken[arg1] / sub_50376848 + 100) / 2))
            idx = 0
            while idx < stor7.length:
                require idx < stor7.length
                mem[0] = 7
                if uint256(stor7[idx].field_0) != arg1:
                    idx = idx + 1
                    continue 
                if idx != -1:
                    require stor7.length - 1 < stor7.length
                    require idx < stor7.length
                    uint256(stor7[idx].field_0) = uint256(stor7[stor7.length].field_0)
                    require stor7.length
                    uint256(stor7[stor7.length].field_0) = 0
                    stor7.length--
                sub_16b6e5d4[arg1] = 0
                priceOfToken[arg1] = 0
                if uint256(sub_10ebe64a[arg1].field_0):
                    mem[(32 * _846) + ceil32(return_data.size) + 256 len 32 * uint256(sub_10ebe64a[arg1].field_0)] = code.data[24264 len 32 * uint256(sub_10ebe64a[arg1].field_0)]
                idx = 0
                while idx < uint256(sub_10ebe64a[arg1].field_0):
                    require idx < uint256(sub_10ebe64a[arg1].field_0)
                    require idx < uint256(sub_10ebe64a[arg1].field_0)
                    mem[(32 * idx) + (32 * _846) + ceil32(return_data.size) + 256] = sub_10ebe64a[arg1][idx].field_0
                    call sub_10ebe64a[arg1][idx].field_0 with:
                       value (100 * sub_01a4ad93[arg1][stor10[arg1][idx].field_0]) + (sub_50376848 * sub_01a4ad93[arg1][stor10[arg1][idx].field_0]) / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[0] = arg1
                    mem[32] = 10
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < uint256(sub_10ebe64a[arg1].field_0):
                    require idx < uint256(sub_10ebe64a[arg1].field_0)
                    mem[0] = arg1
                    mem[32] = 10
                    s = 0
                    while s < uint256(sub_10ebe64a[arg1].field_0):
                        require s < uint256(sub_10ebe64a[arg1].field_0)
                        if sub_10ebe64a[arg1][s].field_0 != mem[(32 * idx) + (32 * _846) + ceil32(return_data.size) + 268 len 20]:
                            mem[0] = arg1
                            mem[32] = 10
                            s = s + 1
                            continue 
                        if s != -1:
                            require uint256(sub_10ebe64a[arg1].field_0) - 1 < uint256(sub_10ebe64a[arg1].field_0)
                            require s < uint256(sub_10ebe64a[arg1].field_0)
                            sub_10ebe64a[arg1][s].field_0 = sub_10ebe64a[arg1][uint256(sub_10ebe64a[arg1].field_0)].field_0
                            require uint256(sub_10ebe64a[arg1].field_0)
                            sub_10ebe64a[arg1][uint256(sub_10ebe64a[arg1].field_0)].field_0 = 0
                            uint256(sub_10ebe64a[arg1].field_0)--
                        mem[0] = arg1
                        mem[32] = 10
                        idx = idx + 1
                        continue 
                    idx = idx + 1
                    continue 
                require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                staticcall 0xc600d41b9c7656e60c0bf76d79b1532b4770d0c.ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) != msg.sender:
                    revert with 0, 'Buyer did not receive token'
                emit 0x5c8e1dca: arg1, sub_16b6e5d4[arg1], msg.sender, priceOfToken[arg1]
            sub_16b6e5d4[arg1] = 0
            priceOfToken[arg1] = 0
            if uint256(sub_10ebe64a[arg1].field_0):
                mem[(32 * _846) + ceil32(return_data.size) + 256 len 32 * uint256(sub_10ebe64a[arg1].field_0)] = code.data[24264 len 32 * uint256(sub_10ebe64a[arg1].field_0)]
            idx = 0
            while idx < uint256(sub_10ebe64a[arg1].field_0):
                require idx < uint256(sub_10ebe64a[arg1].field_0)
                require idx < uint256(sub_10ebe64a[arg1].field_0)
                mem[(32 * idx) + (32 * _846) + ceil32(return_data.size) + 256] = sub_10ebe64a[arg1][idx].field_0
                call sub_10ebe64a[arg1][idx].field_0 with:
                   value (100 * sub_01a4ad93[arg1][stor10[arg1][idx].field_0]) + (sub_50376848 * sub_01a4ad93[arg1][stor10[arg1][idx].field_0]) / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = arg1
                mem[32] = 10
                idx = idx + 1
                continue 
            idx = 0
            while idx < uint256(sub_10ebe64a[arg1].field_0):
                require idx < uint256(sub_10ebe64a[arg1].field_0)
                mem[0] = arg1
                mem[32] = 10
                s = 0
                while s < uint256(sub_10ebe64a[arg1].field_0):
                    require s < uint256(sub_10ebe64a[arg1].field_0)
                    if sub_10ebe64a[arg1][s].field_0 != mem[(32 * idx) + (32 * _846) + ceil32(return_data.size) + 268 len 20]:
                        mem[0] = arg1
                        mem[32] = 10
                        s = s + 1
                        continue 
                    if s != -1:
                        require uint256(sub_10ebe64a[arg1].field_0) - 1 < uint256(sub_10ebe64a[arg1].field_0)
                        require s < uint256(sub_10ebe64a[arg1].field_0)
                        sub_10ebe64a[arg1][s].field_0 = sub_10ebe64a[arg1][uint256(sub_10ebe64a[arg1].field_0)].field_0
                        require uint256(sub_10ebe64a[arg1].field_0)
                        sub_10ebe64a[arg1][uint256(sub_10ebe64a[arg1].field_0)].field_0 = 0
                        uint256(sub_10ebe64a[arg1].field_0)--
                    mem[0] = arg1
                    mem[32] = 10
                    idx = idx + 1
                    continue 
                idx = idx + 1
                continue 
    else:
        call msg.sender with:
           value msg.value - ((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if sub_50376848 + 100 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_50376848 + 100
        if not priceOfToken[arg1] / sub_50376848 + 100:
            call sub_16b6e5d4[arg1] with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
            call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
            call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 > priceOfToken[arg1]:
                revert with 0, 'SafeMath: subtraction overflow'
            if priceOfToken[arg1] > (100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100:
                revert with 0, 'SafeMath: subtraction overflow'
            if (100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100 < ((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - priceOfToken[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            if eth.balance(this.address) < (100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100 / 2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x724e6f7420656e6f7567682046544d206f6e20636f6e747261637420746f2062757920464f,
                            mem[201 len 27]
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.deposit() with:
               value (100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100 / 2 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                revert with 0, 'Was not able to wrap FTM.'
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = 2
            mem[128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[160] = 0xfbc3c04845162f067a0b6f8934383e63899c3524
            mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[196] = ext_call.return_data[0]
            mem[228] = 0
            mem[292] = this.address
            mem[324] = block.timestamp
            mem[260] = 160
            mem[356] = 2
            mem[388 len 0] = None
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _840 = mem[192 len 4], ext_call.return_data[0 len 28]
            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
            _849 = mem[_840 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_840 + 192])] = mem[_840 + 224 len floor32(mem[_840 + 192])]
            mem[64] = (32 * _849) + ceil32(return_data.size) + 224
            require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
            _1497 = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
            if mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224] <= 0:
                revert with 0, 
                            32,
                            55,
                            0x214e6f20464f4f20776173207075726368617365642c20616374696f6e206e6f7420706f737369626c6520617420746869732074696d65,
                            mem[(32 * _849) + ceil32(return_data.size) + 347 len 9]
            require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
            call 0xfbc3c04845162f067a0b6f8934383e63899c3524.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _849) + ceil32(return_data.size) + 260] = 0xf000000000000000000000000000000000000000
            mem[(32 * _849) + ceil32(return_data.size) + 292] = _1497
            require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
            call 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), 0xf000000000000000000000000000000000000000, _1497
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
            staticcall 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            67,
                            0x2e446964206e6f74207375636365737366756c6c79206275726e20746f6b656e732c20616374696f6e206e6f7420706f737369626c6520617420746869732074696d65,
                            mem[(32 * _849) + ceil32(return_data.size) + 359 len 29]
            if (100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100 / 2 > (100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b14166b3 + ((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - ((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100 / 2) < sub_b14166b3:
                revert with 0, 'SafeMath: addition overflow'
            sub_b14166b3 = sub_b14166b3 + ((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - ((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100 / 2)
            emit 0x34d6c12e: ((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100 / 2)
            if (100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100 / 2 > (100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100:
                revert with 0, 'SafeMath: subtraction overflow'
            emit 0x173aa68f: (((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - ((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100 / 2))
            idx = 0
            while idx < stor7.length:
                require idx < stor7.length
                mem[0] = 7
                if uint256(stor7[idx].field_0) != arg1:
                    idx = idx + 1
                    continue 
                if idx != -1:
                    require stor7.length - 1 < stor7.length
                    require idx < stor7.length
                    uint256(stor7[idx].field_0) = uint256(stor7[stor7.length].field_0)
                    require stor7.length
                    uint256(stor7[stor7.length].field_0) = 0
                    stor7.length--
                sub_16b6e5d4[arg1] = 0
                priceOfToken[arg1] = 0
                if uint256(sub_10ebe64a[arg1].field_0):
                    mem[(32 * _849) + ceil32(return_data.size) + 256 len 32 * uint256(sub_10ebe64a[arg1].field_0)] = code.data[24264 len 32 * uint256(sub_10ebe64a[arg1].field_0)]
                idx = 0
                while idx < uint256(sub_10ebe64a[arg1].field_0):
                    require idx < uint256(sub_10ebe64a[arg1].field_0)
                    require idx < uint256(sub_10ebe64a[arg1].field_0)
                    mem[(32 * idx) + (32 * _849) + ceil32(return_data.size) + 256] = sub_10ebe64a[arg1][idx].field_0
                    call sub_10ebe64a[arg1][idx].field_0 with:
                       value (100 * sub_01a4ad93[arg1][stor10[arg1][idx].field_0]) + (sub_50376848 * sub_01a4ad93[arg1][stor10[arg1][idx].field_0]) / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[0] = arg1
                    mem[32] = 10
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < uint256(sub_10ebe64a[arg1].field_0):
                    require idx < uint256(sub_10ebe64a[arg1].field_0)
                    mem[0] = arg1
                    mem[32] = 10
                    s = 0
                    while s < uint256(sub_10ebe64a[arg1].field_0):
                        require s < uint256(sub_10ebe64a[arg1].field_0)
                        if sub_10ebe64a[arg1][s].field_0 != mem[(32 * idx) + (32 * _849) + ceil32(return_data.size) + 268 len 20]:
                            mem[0] = arg1
                            mem[32] = 10
                            s = s + 1
                            continue 
                        if s != -1:
                            require uint256(sub_10ebe64a[arg1].field_0) - 1 < uint256(sub_10ebe64a[arg1].field_0)
                            require s < uint256(sub_10ebe64a[arg1].field_0)
                            sub_10ebe64a[arg1][s].field_0 = sub_10ebe64a[arg1][uint256(sub_10ebe64a[arg1].field_0)].field_0
                            require uint256(sub_10ebe64a[arg1].field_0)
                            sub_10ebe64a[arg1][uint256(sub_10ebe64a[arg1].field_0)].field_0 = 0
                            uint256(sub_10ebe64a[arg1].field_0)--
                        mem[0] = arg1
                        mem[32] = 10
                        idx = idx + 1
                        continue 
                    idx = idx + 1
                    continue 
                require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                staticcall 0xc600d41b9c7656e60c0bf76d79b1532b4770d0c.ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) != msg.sender:
                    revert with 0, 'Buyer did not receive token'
                emit 0x5c8e1dca: arg1, sub_16b6e5d4[arg1], msg.sender, priceOfToken[arg1]
            sub_16b6e5d4[arg1] = 0
            priceOfToken[arg1] = 0
            if uint256(sub_10ebe64a[arg1].field_0):
                mem[(32 * _849) + ceil32(return_data.size) + 256 len 32 * uint256(sub_10ebe64a[arg1].field_0)] = code.data[24264 len 32 * uint256(sub_10ebe64a[arg1].field_0)]
            idx = 0
            while idx < uint256(sub_10ebe64a[arg1].field_0):
                require idx < uint256(sub_10ebe64a[arg1].field_0)
                require idx < uint256(sub_10ebe64a[arg1].field_0)
                mem[(32 * idx) + (32 * _849) + ceil32(return_data.size) + 256] = sub_10ebe64a[arg1][idx].field_0
                call sub_10ebe64a[arg1][idx].field_0 with:
                   value (100 * sub_01a4ad93[arg1][stor10[arg1][idx].field_0]) + (sub_50376848 * sub_01a4ad93[arg1][stor10[arg1][idx].field_0]) / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = arg1
                mem[32] = 10
                idx = idx + 1
                continue 
            idx = 0
            while idx < uint256(sub_10ebe64a[arg1].field_0):
                require idx < uint256(sub_10ebe64a[arg1].field_0)
                mem[0] = arg1
                mem[32] = 10
                s = 0
                while s < uint256(sub_10ebe64a[arg1].field_0):
                    require s < uint256(sub_10ebe64a[arg1].field_0)
                    if sub_10ebe64a[arg1][s].field_0 != mem[(32 * idx) + (32 * _849) + ceil32(return_data.size) + 268 len 20]:
                        mem[0] = arg1
                        mem[32] = 10
                        s = s + 1
                        continue 
                    if s != -1:
                        require uint256(sub_10ebe64a[arg1].field_0) - 1 < uint256(sub_10ebe64a[arg1].field_0)
                        require s < uint256(sub_10ebe64a[arg1].field_0)
                        sub_10ebe64a[arg1][s].field_0 = sub_10ebe64a[arg1][uint256(sub_10ebe64a[arg1].field_0)].field_0
                        require uint256(sub_10ebe64a[arg1].field_0)
                        sub_10ebe64a[arg1][uint256(sub_10ebe64a[arg1].field_0)].field_0 = 0
                        uint256(sub_10ebe64a[arg1].field_0)--
                    mem[0] = arg1
                    mem[32] = 10
                    idx = idx + 1
                    continue 
                idx = idx + 1
                continue 
        else:
            require priceOfToken[arg1] / sub_50376848 + 100
            if 100 * priceOfToken[arg1] / sub_50376848 + 100 / priceOfToken[arg1] / sub_50376848 + 100 != 100:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            call sub_16b6e5d4[arg1] with:
               value 100 * priceOfToken[arg1] / sub_50376848 + 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
            call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
            call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 100 * priceOfToken[arg1] / sub_50376848 + 100 > priceOfToken[arg1]:
                revert with 0, 'SafeMath: subtraction overflow'
            if priceOfToken[arg1] > (100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100:
                revert with 0, 'SafeMath: subtraction overflow'
            if -100 * priceOfToken[arg1] / sub_50376848 + 100 < -priceOfToken[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            if eth.balance(this.address) < ((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - (100 * priceOfToken[arg1] / sub_50376848 + 100) / 2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x724e6f7420656e6f7567682046544d206f6e20636f6e747261637420746f2062757920464f,
                            mem[201 len 27]
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.deposit() with:
               value ((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - (100 * priceOfToken[arg1] / sub_50376848 + 100) / 2 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                revert with 0, 'Was not able to wrap FTM.'
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = 2
            mem[128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[160] = 0xfbc3c04845162f067a0b6f8934383e63899c3524
            mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[196] = ext_call.return_data[0]
            mem[228] = 0
            mem[292] = this.address
            mem[324] = block.timestamp
            mem[260] = 160
            mem[356] = 2
            mem[388 len 0] = None
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _838 = mem[192 len 4], ext_call.return_data[0 len 28]
            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
            _848 = mem[_838 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_838 + 192])] = mem[_838 + 224 len floor32(mem[_838 + 192])]
            mem[64] = (32 * _848) + ceil32(return_data.size) + 224
            require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
            _1496 = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
            if mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224] <= 0:
                revert with 0, 
                            32,
                            55,
                            0x214e6f20464f4f20776173207075726368617365642c20616374696f6e206e6f7420706f737369626c6520617420746869732074696d65,
                            mem[(32 * _848) + ceil32(return_data.size) + 347 len 9]
            require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
            call 0xfbc3c04845162f067a0b6f8934383e63899c3524.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _848) + ceil32(return_data.size) + 260] = 0xf000000000000000000000000000000000000000
            mem[(32 * _848) + ceil32(return_data.size) + 292] = _1496
            require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
            call 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), 0xf000000000000000000000000000000000000000, _1496
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
            staticcall 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            67,
                            0x2e446964206e6f74207375636365737366756c6c79206275726e20746f6b656e732c20616374696f6e206e6f7420706f737369626c6520617420746869732074696d65,
                            mem[(32 * _848) + ceil32(return_data.size) + 359 len 29]
            if ((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - (100 * priceOfToken[arg1] / sub_50376848 + 100) / 2 > ((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - (100 * priceOfToken[arg1] / sub_50376848 + 100):
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_b14166b3 + ((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - (100 * priceOfToken[arg1] / sub_50376848 + 100) - (((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - (100 * priceOfToken[arg1] / sub_50376848 + 100) / 2) < sub_b14166b3:
                revert with 0, 'SafeMath: addition overflow'
            sub_b14166b3 = sub_b14166b3 + ((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - (100 * priceOfToken[arg1] / sub_50376848 + 100) - (((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - (100 * priceOfToken[arg1] / sub_50376848 + 100) / 2)
            emit 0x34d6c12e: (((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - (100 * priceOfToken[arg1] / sub_50376848 + 100) / 2)
            if ((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - (100 * priceOfToken[arg1] / sub_50376848 + 100) / 2 > ((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - (100 * priceOfToken[arg1] / sub_50376848 + 100):
                revert with 0, 'SafeMath: subtraction overflow'
            emit 0x173aa68f: (((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - (100 * priceOfToken[arg1] / sub_50376848 + 100) - (((100 * priceOfToken[arg1]) + (sub_fb815e69 * priceOfToken[arg1]) / 100) - (100 * priceOfToken[arg1] / sub_50376848 + 100) / 2))
            idx = 0
            while idx < stor7.length:
                require idx < stor7.length
                mem[0] = 7
                if uint256(stor7[idx].field_0) != arg1:
                    idx = idx + 1
                    continue 
                if idx != -1:
                    require stor7.length - 1 < stor7.length
                    require idx < stor7.length
                    uint256(stor7[idx].field_0) = uint256(stor7[stor7.length].field_0)
                    require stor7.length
                    uint256(stor7[stor7.length].field_0) = 0
                    stor7.length--
                sub_16b6e5d4[arg1] = 0
                priceOfToken[arg1] = 0
                if uint256(sub_10ebe64a[arg1].field_0):
                    mem[(32 * _848) + ceil32(return_data.size) + 256 len 32 * uint256(sub_10ebe64a[arg1].field_0)] = code.data[24264 len 32 * uint256(sub_10ebe64a[arg1].field_0)]
                idx = 0
                while idx < uint256(sub_10ebe64a[arg1].field_0):
                    require idx < uint256(sub_10ebe64a[arg1].field_0)
                    require idx < uint256(sub_10ebe64a[arg1].field_0)
                    mem[(32 * idx) + (32 * _848) + ceil32(return_data.size) + 256] = sub_10ebe64a[arg1][idx].field_0
                    call sub_10ebe64a[arg1][idx].field_0 with:
                       value (100 * sub_01a4ad93[arg1][stor10[arg1][idx].field_0]) + (sub_50376848 * sub_01a4ad93[arg1][stor10[arg1][idx].field_0]) / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[0] = arg1
                    mem[32] = 10
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < uint256(sub_10ebe64a[arg1].field_0):
                    require idx < uint256(sub_10ebe64a[arg1].field_0)
                    mem[0] = arg1
                    mem[32] = 10
                    s = 0
                    while s < uint256(sub_10ebe64a[arg1].field_0):
                        require s < uint256(sub_10ebe64a[arg1].field_0)
                        if sub_10ebe64a[arg1][s].field_0 != mem[(32 * idx) + (32 * _848) + ceil32(return_data.size) + 268 len 20]:
                            mem[0] = arg1
                            mem[32] = 10
                            s = s + 1
                            continue 
                        if s != -1:
                            require uint256(sub_10ebe64a[arg1].field_0) - 1 < uint256(sub_10ebe64a[arg1].field_0)
                            require s < uint256(sub_10ebe64a[arg1].field_0)
                            sub_10ebe64a[arg1][s].field_0 = sub_10ebe64a[arg1][uint256(sub_10ebe64a[arg1].field_0)].field_0
                            require uint256(sub_10ebe64a[arg1].field_0)
                            sub_10ebe64a[arg1][uint256(sub_10ebe64a[arg1].field_0)].field_0 = 0
                            uint256(sub_10ebe64a[arg1].field_0)--
                        mem[0] = arg1
                        mem[32] = 10
                        idx = idx + 1
                        continue 
                    idx = idx + 1
                    continue 
                require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
                staticcall 0xc600d41b9c7656e60c0bf76d79b1532b4770d0c.ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) != msg.sender:
                    revert with 0, 'Buyer did not receive token'
                emit 0x5c8e1dca: arg1, sub_16b6e5d4[arg1], msg.sender, priceOfToken[arg1]
            sub_16b6e5d4[arg1] = 0
            priceOfToken[arg1] = 0
            if uint256(sub_10ebe64a[arg1].field_0):
                mem[(32 * _848) + ceil32(return_data.size) + 256 len 32 * uint256(sub_10ebe64a[arg1].field_0)] = code.data[24264 len 32 * uint256(sub_10ebe64a[arg1].field_0)]
            idx = 0
            while idx < uint256(sub_10ebe64a[arg1].field_0):
                require idx < uint256(sub_10ebe64a[arg1].field_0)
                require idx < uint256(sub_10ebe64a[arg1].field_0)
                mem[(32 * idx) + (32 * _848) + ceil32(return_data.size) + 256] = sub_10ebe64a[arg1][idx].field_0
                call sub_10ebe64a[arg1][idx].field_0 with:
                   value (100 * sub_01a4ad93[arg1][stor10[arg1][idx].field_0]) + (sub_50376848 * sub_01a4ad93[arg1][stor10[arg1][idx].field_0]) / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = arg1
                mem[32] = 10
                idx = idx + 1
                continue 
            idx = 0
            while idx < uint256(sub_10ebe64a[arg1].field_0):
                require idx < uint256(sub_10ebe64a[arg1].field_0)
                mem[0] = arg1
                mem[32] = 10
                s = 0
                while s < uint256(sub_10ebe64a[arg1].field_0):
                    require s < uint256(sub_10ebe64a[arg1].field_0)
                    if sub_10ebe64a[arg1][s].field_0 != mem[(32 * idx) + (32 * _848) + ceil32(return_data.size) + 268 len 20]:
                        mem[0] = arg1
                        mem[32] = 10
                        s = s + 1
                        continue 
                    if s != -1:
                        require uint256(sub_10ebe64a[arg1].field_0) - 1 < uint256(sub_10ebe64a[arg1].field_0)
                        require s < uint256(sub_10ebe64a[arg1].field_0)
                        sub_10ebe64a[arg1][s].field_0 = sub_10ebe64a[arg1][uint256(sub_10ebe64a[arg1].field_0)].field_0
                        require uint256(sub_10ebe64a[arg1].field_0)
                        sub_10ebe64a[arg1][uint256(sub_10ebe64a[arg1].field_0)].field_0 = 0
                        uint256(sub_10ebe64a[arg1].field_0)--
                    mem[0] = arg1
                    mem[32] = 10
                    idx = idx + 1
                    continue 
                idx = idx + 1
                continue 
    require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
    staticcall 0xc600d41b9c7656e60c0bf76d79b1532b4770d0c.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, 'Buyer did not receive token'
    emit 0x5c8e1dca: arg1, sub_16b6e5d4[arg1], msg.sender, priceOfToken[arg1]
}



}
