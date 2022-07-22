contract main {




// =====================  Runtime code  =====================


#
#  - Buy()
#
address owner;
address WBNBAddress;
address BUSDAddress;
address routerAddress;
address sub_13c64ebfAddress;
address sub_2d00eef3Address;
uint256 orderCount;
uint256 amountOut;
uint256 sub_d2fab695;
uint256 sub_39b5d1ce;
uint256 gasAmount;
uint8 stor12;
uint256 stor12; offset 8
mapping of uint8 stor13;

function sub_13c64ebf(?) {
    return sub_13c64ebfAddress
}

function orderCount() {
    return orderCount
}

function sub_2d00eef3(?) {
    return sub_2d00eef3Address
}

function routerAddress() {
    return routerAddress
}

function sub_39b5d1ce(?) {
    return sub_39b5d1ce
}

function amountOut() {
    return amountOut
}

function BUSD() {
    return BUSDAddress
}

function gasAmount() {
    return gasAmount
}

function owner() {
    return owner
}

function WBNB() {
    return WBNBAddress
}

function sub_d2fab695(?) {
    return sub_d2fab695
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function Unlock() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor12.field_0) = 0
    Mask(248, 0, stor12.field_8) = 0
}

function sub_4bee2f1d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    gasAmount = arg1
}

function sub_c86060aa(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    amountOut = arg1
}

function sub_a74aa378(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    orderCount = arg1
}

function UpdateRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    routerAddress = arg1
}

function sub_abed41f6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13[address(arg1)] = 1
}

function sub_25dc4938(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2d00eef3Address = address(arg1)
}

function sub_95c7d164(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d2fab695 = arg1
    sub_39b5d1ce = arg2
}

function sub_8f0d2e49(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg1) with:
       value arg2 wei
         gas gas_remaining wei
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_fd1039af(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    orderCount = arg2
    sub_2d00eef3Address = address(arg1)
    sub_d2fab695 = arg3
    sub_39b5d1ce = arg4
    amountOut = arg5
    uint8(stor12.field_0) = 0
    Mask(248, 0, stor12.field_8) = 0
}

function withdrawTokens(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approve(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawAllToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_d9ee6d5b(?) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == bool(arg4)
    require arg5 == address(arg5)
    mem[0] = msg.sender
    mem[32] = 13
    if stor13[address(msg.sender)]:
        if arg4:
            mem[96] = 2
            mem[64] = 192
            mem[128] = BUSDAddress
            mem[160] = address(arg5)
            idx = 0
            while idx < arg1:
                _67 = mem[64]
                mem[mem[64] + 36] = arg3
                mem[mem[64] + 68] = arg2
                mem[mem[64] + 100] = 160
                _71 = mem[96]
                mem[mem[64] + 196] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 228
                while s < mem[96]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 132] = sub_13c64ebfAddress
                mem[mem[64] + 164] = block.timestamp
                _119 = mem[64]
                mem[mem[64]] = (32 * mem[96]) + 196
                mem[64] = mem[64] + (32 * _71) + 228
                mem[_119 + 32] = mem[_119 + 36 len 28] or 0x8803dbee00000000000000000000000000000000000000000000000000000000
                _131 = mem[_119]
                s = 0
                while s < _131:
                    mem[_67 + (32 * _71) + s + 228] = mem[_119 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_131) <= _131:
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gasAmount wei
                        args mem[mem[64] + 4 len _67 + (32 * _71) + _131 + -mem[64] + 224]
                    if return_data.size:
                        _163 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_163] = return_data.size
                        mem[_163 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    mem[_67 + (32 * _71) + _131 + 228] = 0
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gasAmount wei
                        args mem[mem[64] + 4 len _67 + (32 * _71) + _131 + -mem[64] + 224]
                    if return_data.size:
                        _171 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_171] = return_data.size
                        mem[_171 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            mem[96] = 3
            mem[64] = 224
            mem[128] = BUSDAddress
            mem[160] = WBNBAddress
            mem[192] = address(arg5)
            idx = 0
            while idx < arg1:
                _68 = mem[64]
                mem[mem[64] + 36] = arg3
                mem[mem[64] + 68] = arg2
                mem[mem[64] + 100] = 160
                _72 = mem[96]
                mem[mem[64] + 196] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 228
                while s < _72:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_68 + 132] = sub_13c64ebfAddress
                mem[_68 + 164] = block.timestamp
                _122 = mem[64]
                mem[mem[64]] = _68 + (32 * _72) + -mem[64] + 196
                mem[64] = _68 + (32 * _72) + 228
                mem[_122 + 32] = mem[_122 + 36 len 28] or 0x8803dbee00000000000000000000000000000000000000000000000000000000
                _132 = mem[_122]
                s = 0
                while s < _132:
                    mem[_68 + (32 * _72) + s + 228] = mem[_122 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_132) > _132:
                    mem[_68 + (32 * _72) + _132 + 228] = 0
                call routerAddress.mem[_68 + (32 * _72) + 228 len 4] with:
                     gas gasAmount wei
                    args mem[_68 + (32 * _72) + 232 len _132 - 4]
                if return_data.size:
                    mem[64] = _68 + (32 * _72) + ceil32(return_data.size) + 229
                    mem[_68 + (32 * _72) + 228] = return_data.size
                    mem[_68 + (32 * _72) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    else:
        mem[0] = msg.sender
        mem[32] = 13
        if bool(stor13[address(msg.sender)]) != 1:
            revert with 0, ''
        if arg4:
            mem[96] = 2
            mem[64] = 192
            mem[128] = BUSDAddress
            mem[160] = address(arg5)
            idx = 0
            while idx < arg1:
                _69 = mem[64]
                mem[mem[64] + 36] = arg3
                mem[mem[64] + 68] = arg2
                mem[mem[64] + 100] = 160
                _73 = mem[96]
                mem[mem[64] + 196] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 228
                while s < mem[96]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 132] = sub_13c64ebfAddress
                mem[mem[64] + 164] = block.timestamp
                _125 = mem[64]
                mem[mem[64]] = (32 * mem[96]) + 196
                mem[64] = mem[64] + (32 * _73) + 228
                mem[_125 + 32] = mem[_125 + 36 len 28] or 0x8803dbee00000000000000000000000000000000000000000000000000000000
                _133 = mem[_125]
                s = 0
                while s < _133:
                    mem[_69 + (32 * _73) + s + 228] = mem[_125 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_133) <= _133:
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gasAmount wei
                        args mem[mem[64] + 4 len _69 + (32 * _73) + _133 + -mem[64] + 224]
                    if return_data.size:
                        _167 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_167] = return_data.size
                        mem[_167 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    mem[_69 + (32 * _73) + _133 + 228] = 0
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gasAmount wei
                        args mem[mem[64] + 4 len _69 + (32 * _73) + _133 + -mem[64] + 224]
                    if return_data.size:
                        _173 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_173] = return_data.size
                        mem[_173 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            mem[96] = 3
            mem[64] = 224
            mem[128] = BUSDAddress
            mem[160] = WBNBAddress
            mem[192] = address(arg5)
            idx = 0
            while idx < arg1:
                _70 = mem[64]
                mem[mem[64] + 36] = arg3
                mem[mem[64] + 68] = arg2
                mem[mem[64] + 100] = 160
                _74 = mem[96]
                mem[mem[64] + 196] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 228
                while s < _74:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_70 + 132] = sub_13c64ebfAddress
                mem[_70 + 164] = block.timestamp
                _128 = mem[64]
                mem[mem[64]] = _70 + (32 * _74) + -mem[64] + 196
                mem[64] = _70 + (32 * _74) + 228
                mem[_128 + 32] = mem[_128 + 36 len 28] or 0x8803dbee00000000000000000000000000000000000000000000000000000000
                _134 = mem[_128]
                s = 0
                while s < _134:
                    mem[_70 + (32 * _74) + s + 228] = mem[_128 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_134) > _134:
                    mem[_70 + (32 * _74) + _134 + 228] = 0
                call routerAddress.mem[_70 + (32 * _74) + 228 len 4] with:
                     gas gasAmount wei
                    args mem[_70 + (32 * _74) + 232 len _134 - 4]
                if return_data.size:
                    mem[64] = _70 + (32 * _74) + ceil32(return_data.size) + 229
                    mem[_70 + (32 * _74) + 228] = return_data.size
                    mem[_70 + (32 * _74) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
}



}
