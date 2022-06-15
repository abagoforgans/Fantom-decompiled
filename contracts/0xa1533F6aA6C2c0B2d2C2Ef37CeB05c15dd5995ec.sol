contract main {




// =====================  Runtime code  =====================


#
#  - sub_2f87e2e1(?)
#  - setRouterAddress(address arg1)
#  - panic()
#  - sub_5860ee3c(?)
#  - end(address arg1)
#  - _fallback()
#
const sub_135ae84b(?) = 0xeac685b543b2e851251c91f21b74350ffdcca0e6


address owner;
address handlerAddress;
address routerAddress;
uint256 slippageFactor;
uint256 sub_beefa4c9;
address masterchefAddress;
address sub_12accf93Address;
address sub_24c31bf9Address;
array of struct sub_98830518;
bool stor9; offset 256
uint8 sub_ceebf843; offset 160
uint8 sub_a65c8097; offset 168
uint8 isPaused; offset 176
uint8 isEnded; offset 184
uint8 sub_4fe30970; offset 192
uint8 sub_610fb0af; offset 200
uint64 stor9; offset 200
address wantTokenAddress;
address tokenAAddress;
address tokenBAddress;
array of struct sub_f889c1c7;
array of struct sub_058fb7ce;

function sub_058fb7ce(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_058fb7ce.length
    return sub_058fb7ce[arg1].field_0
}

function tokenA() {
    return tokenAAddress
}

function sub_12accf93(?) {
    return sub_12accf93Address
}

function sub_24c31bf9(?) {
    return sub_24c31bf9Address
}

function routerAddress() {
    return routerAddress
}

function masterchefAddress() {
    return masterchefAddress
}

function sub_4fe30970(?) {
    return bool(sub_4fe30970)
}

function tokenB() {
    return tokenBAddress
}

function sub_610fb0af(?) {
    return bool(sub_610fb0af)
}

function owner() {
    return owner
}

function sub_98830518(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_98830518.length
    return sub_98830518[arg1].field_0
}

function isEnded() {
    return bool(isEnded)
}

function sub_a65c8097(?) {
    return bool(sub_a65c8097)
}

function isPaused() {
    return bool(isPaused)
}

function sub_beefa4c9(?) {
    return sub_beefa4c9
}

function handler() {
    return handlerAddress
}

function sub_ceebf843(?) {
    return bool(sub_ceebf843)
}

function wantToken() {
    return wantTokenAddress
}

function sub_f889c1c7(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_f889c1c7.length
    return sub_f889c1c7[arg1].field_0
}

function slippageFactor() {
    return slippageFactor
}

function renounceOwnership() {
    revert with 0, 'can't renounceOwnership'
}

function pause() {
    if owner != msg.sender:
        if handlerAddress != msg.sender:
            revert with 0, '!handler'
    isPaused = 1
}

function resume() {
    if owner != msg.sender:
        if handlerAddress != msg.sender:
            revert with 0, '!handler'
    isPaused = 0
}

function sub_0e328821(?) {
    if owner != msg.sender:
        if handlerAddress != msg.sender:
            revert with 0, '!handler'
    sub_a65c8097 = 0
}

function sub_cde77f9c(?) {
    if owner != msg.sender:
        if handlerAddress != msg.sender:
            revert with 0, '!handler'
    sub_ceebf843 = 0
}

function sub_df2e8c1a(?) {
    if owner != msg.sender:
        if handlerAddress != msg.sender:
            revert with 0, '!handler'
    sub_ceebf843 = 0
    sub_a65c8097 = 1
}

function setSlippage(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if handlerAddress != msg.sender:
            revert with 0, '!handler'
    slippageFactor = arg1
}

function setHandler(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if handlerAddress != msg.sender:
            revert with 0, '!handler'
    handlerAddress = arg1
}

function sub_8f9030d0(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        if handlerAddress != msg.sender:
            revert with 0, '!handler'
    stor9.field_200 % 72057594037927936 = bool(arg1) % 72057594037927936
}

function withdrawMatic(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if handlerAddress != msg.sender:
            revert with 0, '!handler'
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'MATIC_TRANSFER_FAILED'
}

function sub_827cdc7f(?) {
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args sub_beefa4c9, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function sub_bf772173(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if handlerAddress != msg.sender:
            revert with 0, '!handler'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, address(arg1));
    owner = address(arg1)
}

function sub_fc16d377(?) {
    require ext_code.size(sub_12accf93Address)
    staticcall sub_12accf93Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'input amount cannot be zero'
    require ext_code.size(sub_12accf93Address)
    staticcall sub_12accf93Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(masterchefAddress)
    if not sub_4fe30970:
        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_beefa4c9, ext_call.return_data[0]
    else:
        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args sub_beefa4c9, ext_call.return_data[0], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3626457f(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        if handlerAddress != msg.sender:
            revert with 0, '!handler'
    sub_058fb7ce.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_058fb7ce.length > idx:
            sub_058fb7ce[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            sub_058fb7ce[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_058fb7ce.length > idx:
            sub_058fb7ce[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_d3553721(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        if handlerAddress != msg.sender:
            revert with 0, '!handler'
    sub_f889c1c7.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_f889c1c7.length > idx:
            sub_f889c1c7[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            sub_f889c1c7[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_f889c1c7.length > idx:
            sub_f889c1c7[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_0e0ad642(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        if handlerAddress != msg.sender:
            revert with 0, '!handler'
    sub_98830518.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_98830518.length > idx:
            sub_98830518[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            sub_98830518[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_98830518.length > idx:
            sub_98830518[idx].field_0 = 0
            idx = idx + 1
            continue 
    if ('cd', 4).length < 1:
        revert with 0, 17
    if ('cd', 4).length - 1 >= ('cd', 4).length:
        revert with 0, 50
    wantTokenAddress = mem[(32 * ('cd', 4).length - 1) + 140 len 20]
    sub_ceebf843 = 1
    sub_a65c8097 = 0
    stor9.field_256 % 1 = 0
}

function withdraw(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        if handlerAddress != msg.sender:
            revert with 0, '!handler'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        if handlerAddress != msg.sender:
            revert with 0, '!handler'
    mem[ceil32(return_data.size) + 132] = arg2
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_4991f1f8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if handlerAddress != msg.sender:
            revert with 0, '!handler'
    mem[132] = this.address
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args sub_beefa4c9, this.address
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if owner != msg.sender:
        if handlerAddress != msg.sender:
            revert with 0, '!handler'
    require ext_code.size(masterchefAddress)
    call masterchefAddress.withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_beefa4c9, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if owner != msg.sender:
        if handlerAddress != msg.sender:
            revert with 0, '!handler'
    mem[ceil32(return_data.size) + 132] = address(arg1)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
    mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_12accf93Address):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), address(arg1) << 64, 0, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call sub_12accf93Address with:
       funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(arg1) << 64, 0, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(arg1) << 64, 0, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require ext_call.return_data[32] == bool(ext_call.return_data[32])
            if not ext_call.return_data[32]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function earn() {
    if isPaused:
        revert with 0, 'earn is paused'
    mem[132] = 0
    if not sub_4fe30970:
        require ext_code.size(masterchefAddress)
        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_beefa4c9, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[100] = this.address
        require ext_code.size(sub_24c31bf9Address)
        staticcall sub_24c31bf9Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 10:
            if not sub_a65c8097:
                if sub_ceebf843:
                    mem[ceil32(return_data.size) + 100] = this.address
                    require ext_code.size(sub_24c31bf9Address)
                    staticcall sub_24c31bf9Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(return_data.size)) + 96] = sub_98830518.length
                    if sub_610fb0af:
                        if not sub_98830518.length:
                            mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 132] = ext_call.return_data[0]
                            mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 164] = 64
                            mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 196] = sub_98830518.length
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 128
                            t = (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 228
                            while idx < sub_98830518.length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 132 len (96 * sub_98830518.length) + 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128
                            require return_data.size >= 32
                            _614 = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28]
                            require mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] <= test266151307()
                            require (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + return_data.size + 128 > (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 159
                            _626 = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                            if mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 1 < 0 or (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129 > test266151307():
                                revert with 0, 65
                            mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129
                            mem[(4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128] = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                            require _614 + (32 * _626) + 32 <= return_data.size
                            mem[(4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160 len 32 * _626] = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + _614 + 160 len 32 * _626]
                            if _626 < 1:
                                revert with 0, 17
                            if _626 - 1 >= _626:
                                revert with 0, 50
                            _1397 = mem[(32 * _626 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160]
                            if mem[(32 * _626 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] and slippageFactor > -1 / mem[(32 * _626 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160]:
                                revert with 0, 17
                            if block.timestamp > -601:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0]
                            mem[mem[64] + 36] = _1397 * slippageFactor / 1000
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = sub_98830518.length
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 128
                            t = mem[64] + 196
                            while idx < sub_98830518.length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], _1397 * slippageFactor / 1000, Array(len=sub_98830518.length, data=mem[mem[64] + 196 len 32 * sub_98830518.length]), address(this.address), block.timestamp + 600
                        else:
                            mem[(2 * ceil32(return_data.size)) + 128] = address(sub_98830518.field_0)
                            if (32 * sub_98830518.length) + 32 <= 64:
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 132] = ext_call.return_data[0]
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 164] = 64
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 196] = sub_98830518.length
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 128
                                t = (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 228
                                while idx < sub_98830518.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 132 len (96 * sub_98830518.length) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128
                                require return_data.size >= 32
                                _615 = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28]
                                require mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + return_data.size + 128 > (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 159
                                _627 = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                                if mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 1 < 0 or (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129 > test266151307():
                                    revert with 0, 65
                                mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129
                                mem[(4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128] = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                                require _615 + (32 * _627) + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160 len 32 * _627] = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + _615 + 160 len 32 * _627]
                                if _627 < 1:
                                    revert with 0, 17
                                if _627 - 1 >= _627:
                                    revert with 0, 50
                                if mem[(32 * _627 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] and slippageFactor > -1 / mem[(32 * _627 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160]:
                                    revert with 0, 17
                                if block.timestamp > -601:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0]
                                mem[mem[64] + 36] = mem[(32 * _627 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] * slippageFactor / 1000
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = sub_98830518.length
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 128
                                t = mem[64] + 196
                                while idx < sub_98830518.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp + 600
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[(32 * _627 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] * slippageFactor / 1000, Array(len=sub_98830518.length, data=mem[mem[64] + 196 len 32 * sub_98830518.length]), address(this.address), block.timestamp + 600
                            else:
                                mem[(2 * ceil32(return_data.size)) + 160] = address(sub_98830518.field_256)
                                idx = (2 * ceil32(return_data.size)) + 160
                                s = 1
                                while (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 96 > idx:
                                    mem[idx + 32] = sub_98830518[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 132] = ext_call.return_data[0]
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 164] = 64
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 196] = sub_98830518.length
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 128
                                t = (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 228
                                while idx < sub_98830518.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 132 len (96 * sub_98830518.length) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128
                                require return_data.size >= 32
                                _2763 = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28]
                                require mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + return_data.size + 128 > (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 159
                                _2778 = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                                if mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 1 < 0 or (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129 > test266151307():
                                    revert with 0, 65
                                mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129
                                mem[(4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128] = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                                require _2763 + (32 * _2778) + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160 len 32 * _2778] = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + _2763 + 160 len 32 * _2778]
                                if _2778 < 1:
                                    revert with 0, 17
                                if _2778 - 1 >= _2778:
                                    revert with 0, 50
                                if mem[(32 * _2778 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] and slippageFactor > -1 / mem[(32 * _2778 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160]:
                                    revert with 0, 17
                                if block.timestamp > -601:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0]
                                mem[mem[64] + 36] = mem[(32 * _2778 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] * slippageFactor / 1000
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = sub_98830518.length
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 128
                                t = mem[64] + 196
                                while idx < sub_98830518.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp + 600
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[(32 * _2778 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] * slippageFactor / 1000, Array(len=sub_98830518.length, data=mem[mem[64] + 196 len 32 * sub_98830518.length]), address(this.address), block.timestamp + 600
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[(2 * ceil32(return_data.size)) + 96] < 1:
                            revert with 0, 17
                        if mem[(2 * ceil32(return_data.size)) + 96] - 1 >= mem[(2 * ceil32(return_data.size)) + 96]:
                            revert with 0, 50
                        require ext_code.size(mem[(32 * mem[(2 * ceil32(return_data.size)) + 96] - 1) + (2 * ceil32(return_data.size)) + 140 len 20])
                        staticcall mem[(32 * mem[(2 * ceil32(return_data.size)) + 96] - 1) + (2 * ceil32(return_data.size)) + 140 len 20].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    else:
                        if not sub_98830518.length:
                            mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 132] = ext_call.return_data[0]
                            mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 164] = 64
                            mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 196] = sub_98830518.length
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 128
                            t = (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 228
                            while idx < sub_98830518.length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 132 len (96 * sub_98830518.length) + 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128
                            require return_data.size >= 32
                            _612 = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28]
                            require mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] <= test266151307()
                            require (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + return_data.size + 128 > (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 159
                            _624 = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                            if mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 1 < 0 or (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129 > test266151307():
                                revert with 0, 65
                            mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129
                            mem[(4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128] = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                            require _612 + (32 * _624) + 32 <= return_data.size
                            mem[(4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160 len 32 * _624] = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + _612 + 160 len 32 * _624]
                            if _624 < 1:
                                revert with 0, 17
                            if _624 - 1 >= _624:
                                revert with 0, 50
                            if mem[(32 * _624 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] and slippageFactor > -1 / mem[(32 * _624 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160]:
                                revert with 0, 17
                            if block.timestamp > -601:
                                revert with 0, 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0]
                            mem[mem[64] + 36] = mem[(32 * _624 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] * slippageFactor / 1000
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = sub_98830518.length
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 128
                            t = mem[64] + 196
                            while idx < sub_98830518.length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], mem[(32 * _624 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] * slippageFactor / 1000, Array(len=sub_98830518.length, data=mem[mem[64] + 196 len 32 * sub_98830518.length]), address(this.address), block.timestamp + 600
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2736 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2736] <= test266151307()
                            require _2736 + return_data.size > _2736 + mem[_2736] + 31
                            if mem[_2736 + mem[_2736]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_2736 + mem[_2736]]) + 1 < 0 or _2736 + ceil32(return_data.size) + ceil32(32 * mem[_2736 + mem[_2736]]) + 1 > test266151307():
                                revert with 0, 65
                            require mem[_2736] + (32 * mem[_2736 + mem[_2736]]) + 32 <= return_data.size
                            if mem[_2736 + mem[_2736]] < 1:
                                revert with 0, 17
                            if mem[_2736 + mem[_2736]] - 1 >= mem[_2736 + mem[_2736]]:
                                revert with 0, 50
                        else:
                            mem[0] = 8
                            mem[(2 * ceil32(return_data.size)) + 128] = address(sub_98830518.field_0)
                            if (32 * sub_98830518.length) + 32 <= 64:
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 132] = ext_call.return_data[0]
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 164] = 64
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 196] = sub_98830518.length
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 128
                                t = (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 228
                                while idx < sub_98830518.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 132 len (96 * sub_98830518.length) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128
                                require return_data.size >= 32
                                _613 = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28]
                                require mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + return_data.size + 128 > (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 159
                                _625 = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                                if mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 1 < 0 or (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129 > test266151307():
                                    revert with 0, 65
                                mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129
                                mem[(4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128] = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                                require _613 + (32 * _625) + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160 len 32 * _625] = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + _613 + 160 len 32 * _625]
                                if _625 < 1:
                                    revert with 0, 17
                                if _625 - 1 >= _625:
                                    revert with 0, 50
                                if mem[(32 * _625 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] and slippageFactor > -1 / mem[(32 * _625 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160]:
                                    revert with 0, 17
                                if block.timestamp > -601:
                                    revert with 0, 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0]
                                mem[mem[64] + 36] = mem[(32 * _625 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] * slippageFactor / 1000
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = sub_98830518.length
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 128
                                t = mem[64] + 196
                                while idx < sub_98830518.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp + 600
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[(32 * _625 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] * slippageFactor / 1000, Array(len=sub_98830518.length, data=mem[mem[64] + 196 len 32 * sub_98830518.length]), address(this.address), block.timestamp + 600
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2737 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2737] <= test266151307()
                                require _2737 + return_data.size > _2737 + mem[_2737] + 31
                                if mem[_2737 + mem[_2737]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_2737 + mem[_2737]]) + 1 < 0 or _2737 + ceil32(return_data.size) + ceil32(32 * mem[_2737 + mem[_2737]]) + 1 > test266151307():
                                    revert with 0, 65
                                require mem[_2737] + (32 * mem[_2737 + mem[_2737]]) + 32 <= return_data.size
                                if mem[_2737 + mem[_2737]] < 1:
                                    revert with 0, 17
                                if mem[_2737 + mem[_2737]] - 1 >= mem[_2737 + mem[_2737]]:
                                    revert with 0, 50
                            else:
                                mem[(2 * ceil32(return_data.size)) + 160] = address(sub_98830518.field_256)
                                idx = (2 * ceil32(return_data.size)) + 160
                                s = 1
                                while (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 96 > idx:
                                    mem[idx + 32] = sub_98830518[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 132] = ext_call.return_data[0]
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 164] = 64
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 196] = sub_98830518.length
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 128
                                t = (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 228
                                while idx < sub_98830518.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 132 len (96 * sub_98830518.length) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128
                                require return_data.size >= 32
                                _2762 = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28]
                                require mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + return_data.size + 128 > (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 159
                                _2776 = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                                if mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 1 < 0 or (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129 > test266151307():
                                    revert with 0, 65
                                mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129
                                mem[(4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128] = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                                require _2762 + (32 * _2776) + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160 len 32 * _2776] = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + _2762 + 160 len 32 * _2776]
                                if _2776 < 1:
                                    revert with 0, 17
                                if _2776 - 1 >= _2776:
                                    revert with 0, 50
                                if mem[(32 * _2776 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] and slippageFactor > -1 / mem[(32 * _2776 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160]:
                                    revert with 0, 17
                                if block.timestamp > -601:
                                    revert with 0, 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0]
                                mem[mem[64] + 36] = mem[(32 * _2776 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] * slippageFactor / 1000
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = sub_98830518.length
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 128
                                t = mem[64] + 196
                                while idx < sub_98830518.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp + 600
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[(32 * _2776 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] * slippageFactor / 1000, Array(len=sub_98830518.length, data=mem[mem[64] + 196 len 32 * sub_98830518.length]), address(this.address), block.timestamp + 600
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5154 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5154] <= test266151307()
                                require _5154 + return_data.size > _5154 + mem[_5154] + 31
                                if mem[_5154 + mem[_5154]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_5154 + mem[_5154]]) + 1 < 0 or _5154 + ceil32(return_data.size) + ceil32(32 * mem[_5154 + mem[_5154]]) + 1 > test266151307():
                                    revert with 0, 65
                                require mem[_5154] + (32 * mem[_5154 + mem[_5154]]) + 32 <= return_data.size
                                if mem[_5154 + mem[_5154]] < 1:
                                    revert with 0, 17
                                if mem[_5154 + mem[_5154]] - 1 >= mem[_5154 + mem[_5154]]:
                                    revert with 0, 50
            else:
                mem[ceil32(return_data.size) + 100] = this.address
                require ext_code.size(sub_24c31bf9Address)
                staticcall sub_24c31bf9Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(2 * ceil32(return_data.size)) + 96] = sub_f889c1c7.length
                if sub_610fb0af:
                    if not sub_f889c1c7.length:
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 132] = ext_call.return_data[0] / 2
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 164] = 64
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 196] = sub_f889c1c7.length
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = (2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 228
                        while idx < sub_f889c1c7.length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 132 len (96 * sub_f889c1c7.length) + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128
                        require return_data.size >= 32
                        _617 = mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                        require mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + return_data.size + 128 > (2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 159
                        _629 = mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]
                        if mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 1 < 0 or (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 129 > test266151307():
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 129
                        mem[(4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128] = _629
                        require _617 + (32 * _629) + 32 <= return_data.size
                        mem[(4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160 len 32 * _629] = mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + _617 + 160 len 32 * _629]
                        if _629 < 1:
                            revert with 0, 17
                        if _629 - 1 >= _629:
                            revert with 0, 50
                        if mem[(32 * _629 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160] and slippageFactor > -1 / mem[(32 * _629 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160]:
                            revert with 0, 17
                        if block.timestamp > -601:
                            revert with 0, 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] / 2
                        mem[mem[64] + 36] = mem[(32 * _629 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160] * slippageFactor / 1000
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = sub_f889c1c7.length
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < sub_f889c1c7.length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 600
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), mem[(32 * _629 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160] * slippageFactor / 1000, Array(len=sub_f889c1c7.length, data=mem[mem[64] + 196 len 32 * sub_f889c1c7.length]), address(this.address), block.timestamp + 600
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[(2 * ceil32(return_data.size)) + 96] < 1:
                            revert with 0, 17
                        if mem[(2 * ceil32(return_data.size)) + 96] - 1 >= mem[(2 * ceil32(return_data.size)) + 96]:
                            revert with 0, 50
                        require ext_code.size(mem[(32 * mem[(2 * ceil32(return_data.size)) + 96] - 1) + (2 * ceil32(return_data.size)) + 140 len 20])
                        staticcall mem[(32 * mem[(2 * ceil32(return_data.size)) + 96] - 1) + (2 * ceil32(return_data.size)) + 140 len 20].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2865 = mem[64]
                        mem[64] = mem[64] + (32 * sub_058fb7ce.length) + 32
                        mem[_2865] = sub_058fb7ce.length
                        if not sub_058fb7ce.length:
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] / 2
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = sub_058fb7ce.length
                            idx = 0
                            s = _2865 + 32
                            t = mem[64] + 100
                            while idx < sub_058fb7ce.length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, ext_call.return_data[0]), Array(len=sub_058fb7ce.length, data=mem[mem[64] + 100 len 32 * sub_058fb7ce.length])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4018 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4042 = mem[_4018]
                            require mem[_4018] <= test266151307()
                            require _4018 + return_data.size > _4018 + mem[_4018] + 31
                            _4054 = mem[_4018 + mem[_4018]]
                            if mem[_4018 + mem[_4018]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_4018 + mem[_4018]]) + 1 < 0 or _4018 + ceil32(return_data.size) + ceil32(32 * mem[_4018 + mem[_4018]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _4018 + ceil32(return_data.size) + ceil32(32 * mem[_4018 + mem[_4018]]) + 1
                            mem[_4018 + ceil32(return_data.size)] = _4054
                            require _4042 + (32 * _4054) + 32 <= return_data.size
                            mem[_4018 + ceil32(return_data.size) + 32 len 32 * _4054] = mem[_4018 + _4042 + 32 len 32 * _4054]
                            if _4054 < 1:
                                revert with 0, 17
                            if _4054 - 1 >= _4054:
                                revert with 0, 50
                            if mem[(32 * _4054 - 1) + _4018 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _4054 - 1) + _4018 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if block.timestamp > -601:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] / 2
                            mem[mem[64] + 36] = mem[(32 * _4054 - 1) + _4018 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                            mem[mem[64] + 68] = 160
                            _5268 = mem[_2865]
                            mem[mem[64] + 164] = mem[_2865]
                            idx = 0
                            s = _2865 + 32
                            t = mem[64] + 196
                            while idx < _5268:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, ext_call.return_data[0]), mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _5268) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[_2865] < 1:
                                revert with 0, 17
                            if mem[_2865] - 1 >= mem[_2865]:
                                revert with 0, 50
                            require ext_code.size(mem[(32 * mem[_2865] - 1) + _2865 + 44 len 20])
                            staticcall mem[(32 * mem[_2865] - 1) + _2865 + 44 len 20].0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAAddress)
                            staticcall tokenAAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6449 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6467 = mem[_6449]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenBAddress)
                            staticcall tokenBAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6506 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6512 = mem[_6506]
                            if _6467 <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(sub_12accf93Address)
                                staticcall sub_12accf93Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6581 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(masterchefAddress)
                                if not sub_4fe30970:
                                    call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args sub_beefa4c9, mem[_6581]
                                else:
                                    call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args sub_beefa4c9, mem[_6581], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                            else:
                                if mem[_6506] <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_12accf93Address)
                                    staticcall sub_12accf93Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6600 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(masterchefAddress)
                                    if not sub_4fe30970:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_6600]
                                    else:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_6600], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                else:
                                    if block.timestamp > -601:
                                        revert with 0, 17
                                    mem[mem[64] + 68] = _6467
                                    mem[mem[64] + 100] = _6512
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 196] = this.address
                                    mem[mem[64] + 228] = block.timestamp + 600
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args tokenAAddress, tokenBAddress, _6467, _6512, 0, 0, address(this.address), block.timestamp + 600
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_12accf93Address)
                                    staticcall sub_12accf93Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6724 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(masterchefAddress)
                                    if not sub_4fe30970:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_6724]
                                    else:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_6724], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                        else:
                            mem[0] = 13
                            mem[_2865 + 32] = address(sub_058fb7ce.field_0)
                            if (32 * sub_058fb7ce.length) + 32 <= 64:
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = sub_058fb7ce.length
                                idx = 0
                                s = _2865 + 32
                                t = mem[64] + 100
                                while idx < sub_058fb7ce.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, ext_call.return_data[0]), Array(len=sub_058fb7ce.length, data=mem[mem[64] + 100 len 32 * sub_058fb7ce.length])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4019 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4043 = mem[_4019]
                                require mem[_4019] <= test266151307()
                                require _4019 + return_data.size > _4019 + mem[_4019] + 31
                                _4055 = mem[_4019 + mem[_4019]]
                                if mem[_4019 + mem[_4019]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_4019 + mem[_4019]]) + 1 < 0 or _4019 + ceil32(return_data.size) + ceil32(32 * mem[_4019 + mem[_4019]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _4019 + ceil32(return_data.size) + ceil32(32 * mem[_4019 + mem[_4019]]) + 1
                                mem[_4019 + ceil32(return_data.size)] = _4055
                                require _4043 + (32 * _4055) + 32 <= return_data.size
                                mem[_4019 + ceil32(return_data.size) + 32 len 32 * _4055] = mem[_4019 + _4043 + 32 len 32 * _4055]
                                if _4055 < 1:
                                    revert with 0, 17
                                if _4055 - 1 >= _4055:
                                    revert with 0, 50
                                if mem[(32 * _4055 - 1) + _4019 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _4055 - 1) + _4019 + ceil32(return_data.size) + 32]:
                                    revert with 0, 17
                                if block.timestamp > -601:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                                mem[mem[64] + 36] = mem[(32 * _4055 - 1) + _4019 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                mem[mem[64] + 68] = 160
                                _5269 = mem[_2865]
                                mem[mem[64] + 164] = mem[_2865]
                                idx = 0
                                s = _2865 + 32
                                t = mem[64] + 196
                                while idx < _5269:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp + 600
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, ext_call.return_data[0]), mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _5269) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_2865] < 1:
                                    revert with 0, 17
                                if mem[_2865] - 1 >= mem[_2865]:
                                    revert with 0, 50
                                require ext_code.size(mem[(32 * mem[_2865] - 1) + _2865 + 44 len 20])
                                staticcall mem[(32 * mem[_2865] - 1) + _2865 + 44 len 20].0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenAAddress)
                                staticcall tokenAAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6451 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6468 = mem[_6451]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenBAddress)
                                staticcall tokenBAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6507 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6513 = mem[_6507]
                                if _6468 <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_12accf93Address)
                                    staticcall sub_12accf93Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6585 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(masterchefAddress)
                                    if not sub_4fe30970:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_6585]
                                    else:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_6585], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                else:
                                    if mem[_6507] <= 0:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_12accf93Address)
                                        staticcall sub_12accf93Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6601 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require ext_code.size(masterchefAddress)
                                        if not sub_4fe30970:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_6601]
                                        else:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_6601], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                    else:
                                        if block.timestamp > -601:
                                            revert with 0, 17
                                        mem[mem[64] + 68] = _6468
                                        mem[mem[64] + 100] = _6513
                                        mem[mem[64] + 132] = 0
                                        mem[mem[64] + 164] = 0
                                        mem[mem[64] + 196] = this.address
                                        mem[mem[64] + 228] = block.timestamp + 600
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                             gas gas_remaining wei
                                            args tokenAAddress, tokenBAddress, _6468, _6513, 0, 0, address(this.address), block.timestamp + 600
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_12accf93Address)
                                        staticcall sub_12accf93Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6725 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require ext_code.size(masterchefAddress)
                                        if not sub_4fe30970:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_6725]
                                        else:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_6725], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                            else:
                                mem[_2865 + 64] = address(sub_058fb7ce.field_256)
                                idx = _2865 + 64
                                s = 1
                                while _2865 + (32 * sub_058fb7ce.length) > idx:
                                    mem[idx + 32] = sub_058fb7ce[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = sub_058fb7ce.length
                                idx = 0
                                s = _2865 + 32
                                t = mem[64] + 100
                                while idx < sub_058fb7ce.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, ext_call.return_data[0]), Array(len=sub_058fb7ce.length, data=mem[mem[64] + 100 len 32 * sub_058fb7ce.length])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6314 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6333 = mem[_6314]
                                require mem[_6314] <= test266151307()
                                require _6314 + return_data.size > _6314 + mem[_6314] + 31
                                _6346 = mem[_6314 + mem[_6314]]
                                if mem[_6314 + mem[_6314]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_6314 + mem[_6314]]) + 1 < 0 or _6314 + ceil32(return_data.size) + ceil32(32 * mem[_6314 + mem[_6314]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _6314 + ceil32(return_data.size) + ceil32(32 * mem[_6314 + mem[_6314]]) + 1
                                mem[_6314 + ceil32(return_data.size)] = _6346
                                require _6333 + (32 * _6346) + 32 <= return_data.size
                                mem[_6314 + ceil32(return_data.size) + 32 len 32 * _6346] = mem[_6314 + _6333 + 32 len 32 * _6346]
                                if _6346 < 1:
                                    revert with 0, 17
                                if _6346 - 1 >= _6346:
                                    revert with 0, 50
                                _7479 = mem[(32 * _6346 - 1) + _6314 + ceil32(return_data.size) + 32]
                                if mem[(32 * _6346 - 1) + _6314 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _6346 - 1) + _6314 + ceil32(return_data.size) + 32]:
                                    revert with 0, 17
                                if block.timestamp > -601:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                                mem[mem[64] + 36] = _7479 * slippageFactor / 1000
                                mem[mem[64] + 68] = 160
                                _7557 = mem[_2865]
                                mem[mem[64] + 164] = mem[_2865]
                                idx = 0
                                s = _2865 + 32
                                t = mem[64] + 196
                                while idx < _7557:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp + 600
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, ext_call.return_data[0]), _7479 * slippageFactor / 1000, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _7557) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_2865] < 1:
                                    revert with 0, 17
                                if mem[_2865] - 1 >= mem[_2865]:
                                    revert with 0, 50
                                require ext_code.size(mem[(32 * mem[_2865] - 1) + _2865 + 44 len 20])
                                staticcall mem[(32 * mem[_2865] - 1) + _2865 + 44 len 20].0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenAAddress)
                                staticcall tokenAAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8594 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8612 = mem[_8594]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenBAddress)
                                staticcall tokenBAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8665 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8686 = mem[_8665]
                                if _8612 <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_12accf93Address)
                                    staticcall sub_12accf93Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8817 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(masterchefAddress)
                                    if not sub_4fe30970:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_8817]
                                    else:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_8817], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                else:
                                    if mem[_8665] <= 0:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_12accf93Address)
                                        staticcall sub_12accf93Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8840 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require ext_code.size(masterchefAddress)
                                        if not sub_4fe30970:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_8840]
                                        else:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_8840], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                    else:
                                        if block.timestamp > -601:
                                            revert with 0, 17
                                        mem[mem[64] + 68] = _8612
                                        mem[mem[64] + 100] = _8686
                                        mem[mem[64] + 132] = 0
                                        mem[mem[64] + 164] = 0
                                        mem[mem[64] + 196] = this.address
                                        mem[mem[64] + 228] = block.timestamp + 600
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                             gas gas_remaining wei
                                            args tokenAAddress, tokenBAddress, _8612, _8686, 0, 0, address(this.address), block.timestamp + 600
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_12accf93Address)
                                        staticcall sub_12accf93Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9008 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require ext_code.size(masterchefAddress)
                                        if not sub_4fe30970:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_9008]
                                        else:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_9008], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                    else:
                        mem[0] = 12
                        mem[(2 * ceil32(return_data.size)) + 128] = address(sub_f889c1c7.field_0)
                        idx = (2 * ceil32(return_data.size)) + 128
                        s = 0
                        while (2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 96 > idx:
                            mem[idx + 32] = sub_f889c1c7[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 132] = ext_call.return_data[0] / 2
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 164] = 64
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 196] = sub_f889c1c7.length
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = (2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 228
                        while idx < sub_f889c1c7.length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 132 len (96 * sub_f889c1c7.length) + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128
                        require return_data.size >= 32
                        _2765 = mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                        require mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + return_data.size + 128 > (2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 159
                        _2782 = mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]
                        if mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 1 < 0 or (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 129 > test266151307():
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 129
                        mem[(4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128] = _2782
                        require _2765 + (32 * _2782) + 32 <= return_data.size
                        mem[(4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160 len 32 * _2782] = mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + _2765 + 160 len 32 * _2782]
                        if _2782 < 1:
                            revert with 0, 17
                        if _2782 - 1 >= _2782:
                            revert with 0, 50
                        if mem[(32 * _2782 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160] and slippageFactor > -1 / mem[(32 * _2782 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160]:
                            revert with 0, 17
                        if block.timestamp > -601:
                            revert with 0, 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] / 2
                        mem[mem[64] + 36] = mem[(32 * _2782 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160] * slippageFactor / 1000
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = sub_f889c1c7.length
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < sub_f889c1c7.length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 600
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), mem[(32 * _2782 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160] * slippageFactor / 1000, Array(len=sub_f889c1c7.length, data=mem[mem[64] + 196 len 32 * sub_f889c1c7.length]), address(this.address), block.timestamp + 600
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[(2 * ceil32(return_data.size)) + 96] < 1:
                            revert with 0, 17
                        if mem[(2 * ceil32(return_data.size)) + 96] - 1 >= mem[(2 * ceil32(return_data.size)) + 96]:
                            revert with 0, 50
                        require ext_code.size(mem[(32 * mem[(2 * ceil32(return_data.size)) + 96] - 1) + (2 * ceil32(return_data.size)) + 140 len 20])
                        staticcall mem[(32 * mem[(2 * ceil32(return_data.size)) + 96] - 1) + (2 * ceil32(return_data.size)) + 140 len 20].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5259 = mem[64]
                        mem[64] = mem[64] + (32 * sub_058fb7ce.length) + 32
                        mem[_5259] = sub_058fb7ce.length
                        if not sub_058fb7ce.length:
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] / 2
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = sub_058fb7ce.length
                            idx = 0
                            s = _5259 + 32
                            t = mem[64] + 100
                            while idx < sub_058fb7ce.length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, ext_call.return_data[0]), Array(len=sub_058fb7ce.length, data=mem[mem[64] + 100 len 32 * sub_058fb7ce.length])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6315 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6334 = mem[_6315]
                            require mem[_6315] <= test266151307()
                            require _6315 + return_data.size > _6315 + mem[_6315] + 31
                            _6348 = mem[_6315 + mem[_6315]]
                            if mem[_6315 + mem[_6315]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_6315 + mem[_6315]]) + 1 < 0 or _6315 + ceil32(return_data.size) + ceil32(32 * mem[_6315 + mem[_6315]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _6315 + ceil32(return_data.size) + ceil32(32 * mem[_6315 + mem[_6315]]) + 1
                            mem[_6315 + ceil32(return_data.size)] = _6348
                            require _6334 + (32 * _6348) + 32 <= return_data.size
                            mem[_6315 + ceil32(return_data.size) + 32 len 32 * _6348] = mem[_6315 + _6334 + 32 len 32 * _6348]
                            if _6348 < 1:
                                revert with 0, 17
                            if _6348 - 1 >= _6348:
                                revert with 0, 50
                            _7480 = mem[(32 * _6348 - 1) + _6315 + ceil32(return_data.size) + 32]
                            if mem[(32 * _6348 - 1) + _6315 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _6348 - 1) + _6315 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if block.timestamp > -601:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] / 2
                            mem[mem[64] + 36] = _7480 * slippageFactor / 1000
                            mem[mem[64] + 68] = 160
                            _7558 = mem[_5259]
                            mem[mem[64] + 164] = mem[_5259]
                            idx = 0
                            s = _5259 + 32
                            t = mem[64] + 196
                            while idx < _7558:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, ext_call.return_data[0]), _7480 * slippageFactor / 1000, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _7558) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[_5259] < 1:
                                revert with 0, 17
                            if mem[_5259] - 1 >= mem[_5259]:
                                revert with 0, 50
                            require ext_code.size(mem[(32 * mem[_5259] - 1) + _5259 + 44 len 20])
                            staticcall mem[(32 * mem[_5259] - 1) + _5259 + 44 len 20].0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAAddress)
                            staticcall tokenAAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8595 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8613 = mem[_8595]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenBAddress)
                            staticcall tokenBAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8666 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8687 = mem[_8666]
                            if _8613 <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(sub_12accf93Address)
                                staticcall sub_12accf93Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8820 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(masterchefAddress)
                                if not sub_4fe30970:
                                    call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args sub_beefa4c9, mem[_8820]
                                else:
                                    call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args sub_beefa4c9, mem[_8820], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                            else:
                                if mem[_8666] <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_12accf93Address)
                                    staticcall sub_12accf93Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8841 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(masterchefAddress)
                                    if not sub_4fe30970:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_8841]
                                    else:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_8841], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                else:
                                    if block.timestamp > -601:
                                        revert with 0, 17
                                    mem[mem[64] + 68] = _8613
                                    mem[mem[64] + 100] = _8687
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 196] = this.address
                                    mem[mem[64] + 228] = block.timestamp + 600
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args tokenAAddress, tokenBAddress, _8613, _8687, 0, 0, address(this.address), block.timestamp + 600
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_12accf93Address)
                                    staticcall sub_12accf93Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9009 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(masterchefAddress)
                                    if not sub_4fe30970:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_9009]
                                    else:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_9009], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                        else:
                            mem[0] = 13
                            mem[_5259 + 32] = address(sub_058fb7ce.field_0)
                            if (32 * sub_058fb7ce.length) + 32 <= 64:
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = sub_058fb7ce.length
                                idx = 0
                                s = _5259 + 32
                                t = mem[64] + 100
                                while idx < sub_058fb7ce.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, ext_call.return_data[0]), Array(len=sub_058fb7ce.length, data=mem[mem[64] + 100 len 32 * sub_058fb7ce.length])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6316 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6335 = mem[_6316]
                                require mem[_6316] <= test266151307()
                                require _6316 + return_data.size > _6316 + mem[_6316] + 31
                                _6349 = mem[_6316 + mem[_6316]]
                                if mem[_6316 + mem[_6316]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_6316 + mem[_6316]]) + 1 < 0 or _6316 + ceil32(return_data.size) + ceil32(32 * mem[_6316 + mem[_6316]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _6316 + ceil32(return_data.size) + ceil32(32 * mem[_6316 + mem[_6316]]) + 1
                                mem[_6316 + ceil32(return_data.size)] = _6349
                                require _6335 + (32 * _6349) + 32 <= return_data.size
                                mem[_6316 + ceil32(return_data.size) + 32 len 32 * _6349] = mem[_6316 + _6335 + 32 len 32 * _6349]
                                if _6349 < 1:
                                    revert with 0, 17
                                if _6349 - 1 >= _6349:
                                    revert with 0, 50
                                if mem[(32 * _6349 - 1) + _6316 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _6349 - 1) + _6316 + ceil32(return_data.size) + 32]:
                                    revert with 0, 17
                                if block.timestamp > -601:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                                mem[mem[64] + 36] = mem[(32 * _6349 - 1) + _6316 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                mem[mem[64] + 68] = 160
                                _7559 = mem[_5259]
                                mem[mem[64] + 164] = mem[_5259]
                                idx = 0
                                s = _5259 + 32
                                t = mem[64] + 196
                                while idx < _7559:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp + 600
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, ext_call.return_data[0]), mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _7559) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_5259] < 1:
                                    revert with 0, 17
                                if mem[_5259] - 1 >= mem[_5259]:
                                    revert with 0, 50
                                require ext_code.size(mem[(32 * mem[_5259] - 1) + _5259 + 44 len 20])
                                staticcall mem[(32 * mem[_5259] - 1) + _5259 + 44 len 20].0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenAAddress)
                                staticcall tokenAAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8597 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8614 = mem[_8597]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenBAddress)
                                staticcall tokenBAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8667 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8688 = mem[_8667]
                                if _8614 <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_12accf93Address)
                                    staticcall sub_12accf93Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8824 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(masterchefAddress)
                                    if not sub_4fe30970:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_8824]
                                    else:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_8824], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                else:
                                    if mem[_8667] <= 0:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_12accf93Address)
                                        staticcall sub_12accf93Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8842 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require ext_code.size(masterchefAddress)
                                        if not sub_4fe30970:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_8842]
                                        else:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_8842], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                    else:
                                        if block.timestamp > -601:
                                            revert with 0, 17
                                        mem[mem[64] + 68] = _8614
                                        mem[mem[64] + 100] = _8688
                                        mem[mem[64] + 132] = 0
                                        mem[mem[64] + 164] = 0
                                        mem[mem[64] + 196] = this.address
                                        mem[mem[64] + 228] = block.timestamp + 600
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                             gas gas_remaining wei
                                            args tokenAAddress, tokenBAddress, _8614, _8688, 0, 0, address(this.address), block.timestamp + 600
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_12accf93Address)
                                        staticcall sub_12accf93Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9010 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require ext_code.size(masterchefAddress)
                                        if not sub_4fe30970:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_9010]
                                        else:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_9010], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                            else:
                                mem[_5259 + 64] = address(sub_058fb7ce.field_256)
                                idx = _5259 + 64
                                s = 1
                                while _5259 + (32 * sub_058fb7ce.length) > idx:
                                    mem[idx + 32] = sub_058fb7ce[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = sub_058fb7ce.length
                                idx = 0
                                s = _5259 + 32
                                t = mem[64] + 100
                                while idx < sub_058fb7ce.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, ext_call.return_data[0]), Array(len=sub_058fb7ce.length, data=mem[mem[64] + 100 len 32 * sub_058fb7ce.length])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8458 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8476 = mem[_8458]
                                require mem[_8458] <= test266151307()
                                require _8458 + return_data.size > _8458 + mem[_8458] + 31
                                _8487 = mem[_8458 + mem[_8458]]
                                if mem[_8458 + mem[_8458]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_8458 + mem[_8458]]) + 1 < 0 or _8458 + ceil32(return_data.size) + ceil32(32 * mem[_8458 + mem[_8458]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _8458 + ceil32(return_data.size) + ceil32(32 * mem[_8458 + mem[_8458]]) + 1
                                mem[_8458 + ceil32(return_data.size)] = _8487
                                require _8476 + (32 * _8487) + 32 <= return_data.size
                                mem[_8458 + ceil32(return_data.size) + 32 len 32 * _8487] = mem[_8458 + _8476 + 32 len 32 * _8487]
                                if _8487 < 1:
                                    revert with 0, 17
                                if _8487 - 1 >= _8487:
                                    revert with 0, 50
                                if mem[(32 * _8487 - 1) + _8458 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _8487 - 1) + _8458 + ceil32(return_data.size) + 32]:
                                    revert with 0, 17
                                if block.timestamp > -601:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                                mem[mem[64] + 36] = mem[(32 * _8487 - 1) + _8458 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                mem[mem[64] + 68] = 160
                                _9510 = mem[_5259]
                                mem[mem[64] + 164] = mem[_5259]
                                idx = 0
                                s = _5259 + 32
                                t = mem[64] + 196
                                while idx < _9510:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp + 600
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, ext_call.return_data[0]), mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _9510) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_5259] < 1:
                                    revert with 0, 17
                                if mem[_5259] - 1 >= mem[_5259]:
                                    revert with 0, 50
                                require ext_code.size(mem[(32 * mem[_5259] - 1) + _5259 + 44 len 20])
                                staticcall mem[(32 * mem[_5259] - 1) + _5259 + 44 len 20].0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenAAddress)
                                staticcall tokenAAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10040 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10050 = mem[_10040]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenBAddress)
                                staticcall tokenBAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10078 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10099 = mem[_10078]
                                if _10050 <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_12accf93Address)
                                    staticcall sub_12accf93Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10226 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(masterchefAddress)
                                    if not sub_4fe30970:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_10226]
                                    else:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_10226], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                else:
                                    if mem[_10078] <= 0:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_12accf93Address)
                                        staticcall sub_12accf93Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10235 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require ext_code.size(masterchefAddress)
                                        if not sub_4fe30970:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_10235]
                                        else:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_10235], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                    else:
                                        if block.timestamp > -601:
                                            revert with 0, 17
                                        mem[mem[64] + 68] = _10050
                                        mem[mem[64] + 100] = _10099
                                        mem[mem[64] + 132] = 0
                                        mem[mem[64] + 164] = 0
                                        mem[mem[64] + 196] = this.address
                                        mem[mem[64] + 228] = block.timestamp + 600
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                             gas gas_remaining wei
                                            args tokenAAddress, tokenBAddress, _10050, _10099, 0, 0, address(this.address), block.timestamp + 600
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_12accf93Address)
                                        staticcall sub_12accf93Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10310 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require ext_code.size(masterchefAddress)
                                        if not sub_4fe30970:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_10310]
                                        else:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_10310], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                else:
                    if not sub_f889c1c7.length:
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 132] = ext_call.return_data[0] / 2
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 164] = 64
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 196] = sub_f889c1c7.length
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = (2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 228
                        while idx < sub_f889c1c7.length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 132 len (96 * sub_f889c1c7.length) + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128
                        require return_data.size >= 32
                        _616 = mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                        require mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + return_data.size + 128 > (2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 159
                        _628 = mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]
                        if mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 1 < 0 or (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 129 > test266151307():
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 129
                        mem[(4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128] = _628
                        require _616 + (32 * _628) + 32 <= return_data.size
                        mem[(4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160 len 32 * _628] = mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + _616 + 160 len 32 * _628]
                        if _628 < 1:
                            revert with 0, 17
                        if _628 - 1 >= _628:
                            revert with 0, 50
                        if mem[(32 * _628 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160] and slippageFactor > -1 / mem[(32 * _628 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160]:
                            revert with 0, 17
                        if block.timestamp > -601:
                            revert with 0, 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] / 2
                        mem[mem[64] + 36] = mem[(32 * _628 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160] * slippageFactor / 1000
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = sub_f889c1c7.length
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < sub_f889c1c7.length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 600
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), mem[(32 * _628 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160] * slippageFactor / 1000, Array(len=sub_f889c1c7.length, data=mem[mem[64] + 196 len 32 * sub_f889c1c7.length]), address(this.address), block.timestamp + 600
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2740 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2758 = mem[_2740]
                        require mem[_2740] <= test266151307()
                        require _2740 + return_data.size > _2740 + mem[_2740] + 31
                        _2772 = mem[_2740 + mem[_2740]]
                        if mem[_2740 + mem[_2740]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_2740 + mem[_2740]]) + 1 < 0 or _2740 + ceil32(return_data.size) + ceil32(32 * mem[_2740 + mem[_2740]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _2740 + ceil32(return_data.size) + ceil32(32 * mem[_2740 + mem[_2740]]) + 1
                        mem[_2740 + ceil32(return_data.size)] = _2772
                        require _2758 + (32 * _2772) + 32 <= return_data.size
                        mem[_2740 + ceil32(return_data.size) + 32 len 32 * _2772] = mem[_2740 + _2758 + 32 len 32 * _2772]
                        if _2772 < 1:
                            revert with 0, 17
                        if _2772 - 1 >= _2772:
                            revert with 0, 50
                        _4058 = mem[64]
                        mem[64] = mem[64] + (32 * sub_058fb7ce.length) + 32
                        mem[_4058] = sub_058fb7ce.length
                        if not sub_058fb7ce.length:
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] / 2
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = sub_058fb7ce.length
                            idx = 0
                            s = _4058 + 32
                            t = mem[64] + 100
                            while idx < sub_058fb7ce.length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, ext_call.return_data[0]), Array(len=sub_058fb7ce.length, data=mem[mem[64] + 100 len 32 * sub_058fb7ce.length])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5164 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5176 = mem[_5164]
                            require mem[_5164] <= test266151307()
                            require _5164 + return_data.size > _5164 + mem[_5164] + 31
                            _5191 = mem[_5164 + mem[_5164]]
                            if mem[_5164 + mem[_5164]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_5164 + mem[_5164]]) + 1 < 0 or _5164 + ceil32(return_data.size) + ceil32(32 * mem[_5164 + mem[_5164]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _5164 + ceil32(return_data.size) + ceil32(32 * mem[_5164 + mem[_5164]]) + 1
                            mem[_5164 + ceil32(return_data.size)] = _5191
                            require _5176 + (32 * _5191) + 32 <= return_data.size
                            mem[_5164 + ceil32(return_data.size) + 32 len 32 * _5191] = mem[_5164 + _5176 + 32 len 32 * _5191]
                            if _5191 < 1:
                                revert with 0, 17
                            if _5191 - 1 >= _5191:
                                revert with 0, 50
                            if mem[(32 * _5191 - 1) + _5164 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _5191 - 1) + _5164 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if block.timestamp > -601:
                                revert with 0, 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] / 2
                            mem[mem[64] + 36] = mem[(32 * _5191 - 1) + _5164 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                            mem[mem[64] + 68] = 160
                            _6436 = mem[_4058]
                            mem[mem[64] + 164] = mem[_4058]
                            idx = 0
                            s = _4058 + 32
                            t = mem[64] + 196
                            while idx < _6436:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, ext_call.return_data[0]), mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _6436) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7454 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7466 = mem[_7454]
                            require mem[_7454] <= test266151307()
                            require _7454 + return_data.size > _7454 + mem[_7454] + 31
                            _7490 = mem[_7454 + mem[_7454]]
                            if mem[_7454 + mem[_7454]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_7454 + mem[_7454]]) + 1 < 0 or _7454 + ceil32(return_data.size) + ceil32(32 * mem[_7454 + mem[_7454]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _7454 + ceil32(return_data.size) + ceil32(32 * mem[_7454 + mem[_7454]]) + 1
                            mem[_7454 + ceil32(return_data.size)] = _7490
                            require _7466 + (32 * _7490) + 32 <= return_data.size
                            mem[_7454 + ceil32(return_data.size) + 32 len 32 * _7490] = mem[_7454 + _7466 + 32 len 32 * _7490]
                            if _7490 < 1:
                                revert with 0, 17
                            if _7490 - 1 >= _7490:
                                revert with 0, 50
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAAddress)
                            staticcall tokenAAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8532 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8542 = mem[_8532]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenBAddress)
                            staticcall tokenBAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8582 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8602 = mem[_8582]
                            if _8542 <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(sub_12accf93Address)
                                staticcall sub_12accf93Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8680 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(masterchefAddress)
                                if not sub_4fe30970:
                                    call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args sub_beefa4c9, mem[_8680]
                                else:
                                    call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args sub_beefa4c9, mem[_8680], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                            else:
                                if mem[_8582] <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_12accf93Address)
                                    staticcall sub_12accf93Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8698 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(masterchefAddress)
                                    if not sub_4fe30970:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_8698]
                                    else:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_8698], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                else:
                                    if block.timestamp > -601:
                                        revert with 0, 17
                                    mem[mem[64] + 68] = _8542
                                    mem[mem[64] + 100] = _8602
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 196] = this.address
                                    mem[mem[64] + 228] = block.timestamp + 600
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args tokenAAddress, tokenBAddress, _8542, _8602, 0, 0, address(this.address), block.timestamp + 600
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_12accf93Address)
                                    staticcall sub_12accf93Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8838 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(masterchefAddress)
                                    if not sub_4fe30970:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_8838]
                                    else:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_8838], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                        else:
                            mem[0] = 13
                            mem[_4058 + 32] = address(sub_058fb7ce.field_0)
                            if (32 * sub_058fb7ce.length) + 32 <= 64:
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = sub_058fb7ce.length
                                idx = 0
                                s = _4058 + 32
                                t = mem[64] + 100
                                while idx < sub_058fb7ce.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, ext_call.return_data[0]), Array(len=sub_058fb7ce.length, data=mem[mem[64] + 100 len 32 * sub_058fb7ce.length])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5165 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5177 = mem[_5165]
                                require mem[_5165] <= test266151307()
                                require _5165 + return_data.size > _5165 + mem[_5165] + 31
                                _5192 = mem[_5165 + mem[_5165]]
                                if mem[_5165 + mem[_5165]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_5165 + mem[_5165]]) + 1 < 0 or _5165 + ceil32(return_data.size) + ceil32(32 * mem[_5165 + mem[_5165]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _5165 + ceil32(return_data.size) + ceil32(32 * mem[_5165 + mem[_5165]]) + 1
                                mem[_5165 + ceil32(return_data.size)] = _5192
                                require _5177 + (32 * _5192) + 32 <= return_data.size
                                mem[_5165 + ceil32(return_data.size) + 32 len 32 * _5192] = mem[_5165 + _5177 + 32 len 32 * _5192]
                                if _5192 < 1:
                                    revert with 0, 17
                                if _5192 - 1 >= _5192:
                                    revert with 0, 50
                                if mem[(32 * _5192 - 1) + _5165 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _5192 - 1) + _5165 + ceil32(return_data.size) + 32]:
                                    revert with 0, 17
                                if block.timestamp > -601:
                                    revert with 0, 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                                mem[mem[64] + 36] = mem[(32 * _5192 - 1) + _5165 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                mem[mem[64] + 68] = 160
                                _6437 = mem[_4058]
                                mem[mem[64] + 164] = mem[_4058]
                                idx = 0
                                s = _4058 + 32
                                t = mem[64] + 196
                                while idx < _6437:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp + 600
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, ext_call.return_data[0]), mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _6437) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7455 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7467 = mem[_7455]
                                require mem[_7455] <= test266151307()
                                require _7455 + return_data.size > _7455 + mem[_7455] + 31
                                _7491 = mem[_7455 + mem[_7455]]
                                if mem[_7455 + mem[_7455]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_7455 + mem[_7455]]) + 1 < 0 or _7455 + ceil32(return_data.size) + ceil32(32 * mem[_7455 + mem[_7455]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _7455 + ceil32(return_data.size) + ceil32(32 * mem[_7455 + mem[_7455]]) + 1
                                mem[_7455 + ceil32(return_data.size)] = _7491
                                require _7467 + (32 * _7491) + 32 <= return_data.size
                                mem[_7455 + ceil32(return_data.size) + 32 len 32 * _7491] = mem[_7455 + _7467 + 32 len 32 * _7491]
                                if _7491 < 1:
                                    revert with 0, 17
                                if _7491 - 1 >= _7491:
                                    revert with 0, 50
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenAAddress)
                                staticcall tokenAAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8533 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8543 = mem[_8533]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenBAddress)
                                staticcall tokenBAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8584 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8604 = mem[_8584]
                                if _8543 <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_12accf93Address)
                                    staticcall sub_12accf93Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8683 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(masterchefAddress)
                                    if not sub_4fe30970:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_8683]
                                    else:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_8683], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                else:
                                    if mem[_8584] <= 0:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_12accf93Address)
                                        staticcall sub_12accf93Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8699 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require ext_code.size(masterchefAddress)
                                        if not sub_4fe30970:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_8699]
                                        else:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_8699], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                    else:
                                        if block.timestamp > -601:
                                            revert with 0, 17
                                        mem[mem[64] + 68] = _8543
                                        mem[mem[64] + 100] = _8604
                                        mem[mem[64] + 132] = 0
                                        mem[mem[64] + 164] = 0
                                        mem[mem[64] + 196] = this.address
                                        mem[mem[64] + 228] = block.timestamp + 600
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                             gas gas_remaining wei
                                            args tokenAAddress, tokenBAddress, _8543, _8604, 0, 0, address(this.address), block.timestamp + 600
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_12accf93Address)
                                        staticcall sub_12accf93Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8839 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require ext_code.size(masterchefAddress)
                                        if not sub_4fe30970:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_8839]
                                        else:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_8839], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                            else:
                                mem[_4058 + 64] = address(sub_058fb7ce.field_256)
                                idx = _4058 + 64
                                s = 1
                                while _4058 + (32 * sub_058fb7ce.length) > idx:
                                    mem[idx + 32] = sub_058fb7ce[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = sub_058fb7ce.length
                                idx = 0
                                s = _4058 + 32
                                t = mem[64] + 100
                                while idx < sub_058fb7ce.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, ext_call.return_data[0]), Array(len=sub_058fb7ce.length, data=mem[mem[64] + 100 len 32 * sub_058fb7ce.length])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7460 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7476 = mem[_7460]
                                require mem[_7460] <= test266151307()
                                require _7460 + return_data.size > _7460 + mem[_7460] + 31
                                _7494 = mem[_7460 + mem[_7460]]
                                if mem[_7460 + mem[_7460]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_7460 + mem[_7460]]) + 1 < 0 or _7460 + ceil32(return_data.size) + ceil32(32 * mem[_7460 + mem[_7460]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _7460 + ceil32(return_data.size) + ceil32(32 * mem[_7460 + mem[_7460]]) + 1
                                mem[_7460 + ceil32(return_data.size)] = _7494
                                require _7476 + (32 * _7494) + 32 <= return_data.size
                                mem[_7460 + ceil32(return_data.size) + 32 len 32 * _7494] = mem[_7460 + _7476 + 32 len 32 * _7494]
                                if _7494 < 1:
                                    revert with 0, 17
                                if _7494 - 1 >= _7494:
                                    revert with 0, 50
                                _8471 = mem[(32 * _7494 - 1) + _7460 + ceil32(return_data.size) + 32]
                                if mem[(32 * _7494 - 1) + _7460 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _7494 - 1) + _7460 + ceil32(return_data.size) + 32]:
                                    revert with 0, 17
                                if block.timestamp > -601:
                                    revert with 0, 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                                mem[mem[64] + 36] = _8471 * slippageFactor / 1000
                                mem[mem[64] + 68] = 160
                                _8583 = mem[_4058]
                                mem[mem[64] + 164] = mem[_4058]
                                idx = 0
                                s = _4058 + 32
                                t = mem[64] + 196
                                while idx < _8583:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp + 600
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, ext_call.return_data[0]), _8471 * slippageFactor / 1000, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _8583) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9446 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _9454 = mem[_9446]
                                require mem[_9446] <= test266151307()
                                require _9446 + return_data.size > _9446 + mem[_9446] + 31
                                _9466 = mem[_9446 + mem[_9446]]
                                if mem[_9446 + mem[_9446]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_9446 + mem[_9446]]) + 1 < 0 or _9446 + ceil32(return_data.size) + ceil32(32 * mem[_9446 + mem[_9446]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _9446 + ceil32(return_data.size) + ceil32(32 * mem[_9446 + mem[_9446]]) + 1
                                mem[_9446 + ceil32(return_data.size)] = _9466
                                require _9454 + (32 * _9466) + 32 <= return_data.size
                                mem[_9446 + ceil32(return_data.size) + 32 len 32 * _9466] = mem[_9446 + _9454 + 32 len 32 * _9466]
                                if _9466 < 1:
                                    revert with 0, 17
                                if _9466 - 1 >= _9466:
                                    revert with 0, 50
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenAAddress)
                                staticcall tokenAAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10000 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10008 = mem[_10000]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenBAddress)
                                staticcall tokenBAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10032 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10042 = mem[_10032]
                                if _10008 <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_12accf93Address)
                                    staticcall sub_12accf93Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10090 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(masterchefAddress)
                                    if not sub_4fe30970:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_10090]
                                    else:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_10090], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                else:
                                    if mem[_10032] <= 0:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_12accf93Address)
                                        staticcall sub_12accf93Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10110 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require ext_code.size(masterchefAddress)
                                        if not sub_4fe30970:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_10110]
                                        else:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_10110], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                    else:
                                        if block.timestamp > -601:
                                            revert with 0, 17
                                        mem[mem[64] + 68] = _10008
                                        mem[mem[64] + 100] = _10042
                                        mem[mem[64] + 132] = 0
                                        mem[mem[64] + 164] = 0
                                        mem[mem[64] + 196] = this.address
                                        mem[mem[64] + 228] = block.timestamp + 600
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                             gas gas_remaining wei
                                            args tokenAAddress, tokenBAddress, _10008, _10042, 0, 0, address(this.address), block.timestamp + 600
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_12accf93Address)
                                        staticcall sub_12accf93Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10232 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require ext_code.size(masterchefAddress)
                                        if not sub_4fe30970:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_10232]
                                        else:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_10232], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                    else:
                        mem[0] = 12
                        mem[(2 * ceil32(return_data.size)) + 128] = address(sub_f889c1c7.field_0)
                        idx = (2 * ceil32(return_data.size)) + 128
                        s = 0
                        while (2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 96 > idx:
                            mem[idx + 32] = sub_f889c1c7[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 132] = ext_call.return_data[0] / 2
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 164] = 64
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 196] = sub_f889c1c7.length
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = (2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 228
                        while idx < sub_f889c1c7.length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 132 len (96 * sub_f889c1c7.length) + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128
                        require return_data.size >= 32
                        _2764 = mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                        require mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + return_data.size + 128 > (2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 159
                        _2780 = mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]
                        if mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 1 < 0 or (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 129 > test266151307():
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 129
                        mem[(4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128] = _2780
                        require _2764 + (32 * _2780) + 32 <= return_data.size
                        mem[(4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160 len 32 * _2780] = mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + _2764 + 160 len 32 * _2780]
                        if _2780 < 1:
                            revert with 0, 17
                        if _2780 - 1 >= _2780:
                            revert with 0, 50
                        if mem[(32 * _2780 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160] and slippageFactor > -1 / mem[(32 * _2780 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160]:
                            revert with 0, 17
                        if block.timestamp > -601:
                            revert with 0, 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] / 2
                        mem[mem[64] + 36] = mem[(32 * _2780 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160] * slippageFactor / 1000
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = sub_f889c1c7.length
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < sub_f889c1c7.length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 600
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), mem[(32 * _2780 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160] * slippageFactor / 1000, Array(len=sub_f889c1c7.length, data=mem[mem[64] + 196 len 32 * sub_f889c1c7.length]), address(this.address), block.timestamp + 600
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5156 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5169 = mem[_5156]
                        require mem[_5156] <= test266151307()
                        require _5156 + return_data.size > _5156 + mem[_5156] + 31
                        _5187 = mem[_5156 + mem[_5156]]
                        if mem[_5156 + mem[_5156]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_5156 + mem[_5156]]) + 1 < 0 or _5156 + ceil32(return_data.size) + ceil32(32 * mem[_5156 + mem[_5156]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _5156 + ceil32(return_data.size) + ceil32(32 * mem[_5156 + mem[_5156]]) + 1
                        mem[_5156 + ceil32(return_data.size)] = _5187
                        require _5169 + (32 * _5187) + 32 <= return_data.size
                        mem[_5156 + ceil32(return_data.size) + 32 len 32 * _5187] = mem[_5156 + _5169 + 32 len 32 * _5187]
                        if _5187 < 1:
                            revert with 0, 17
                        if _5187 - 1 >= _5187:
                            revert with 0, 50
                        _6371 = mem[64]
                        mem[64] = mem[64] + (32 * sub_058fb7ce.length) + 32
                        mem[_6371] = sub_058fb7ce.length
                        if not sub_058fb7ce.length:
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] / 2
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = sub_058fb7ce.length
                            idx = 0
                            s = _6371 + 32
                            t = mem[64] + 100
                            while idx < sub_058fb7ce.length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, ext_call.return_data[0]), Array(len=sub_058fb7ce.length, data=mem[mem[64] + 100 len 32 * sub_058fb7ce.length])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7461 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7477 = mem[_7461]
                            require mem[_7461] <= test266151307()
                            require _7461 + return_data.size > _7461 + mem[_7461] + 31
                            _7495 = mem[_7461 + mem[_7461]]
                            if mem[_7461 + mem[_7461]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_7461 + mem[_7461]]) + 1 < 0 or _7461 + ceil32(return_data.size) + ceil32(32 * mem[_7461 + mem[_7461]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _7461 + ceil32(return_data.size) + ceil32(32 * mem[_7461 + mem[_7461]]) + 1
                            mem[_7461 + ceil32(return_data.size)] = _7495
                            require _7477 + (32 * _7495) + 32 <= return_data.size
                            mem[_7461 + ceil32(return_data.size) + 32 len 32 * _7495] = mem[_7461 + _7477 + 32 len 32 * _7495]
                            if _7495 < 1:
                                revert with 0, 17
                            if _7495 - 1 >= _7495:
                                revert with 0, 50
                            if mem[(32 * _7495 - 1) + _7461 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _7495 - 1) + _7461 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if block.timestamp > -601:
                                revert with 0, 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] / 2
                            mem[mem[64] + 36] = mem[(32 * _7495 - 1) + _7461 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                            mem[mem[64] + 68] = 160
                            _8585 = mem[_6371]
                            mem[mem[64] + 164] = mem[_6371]
                            idx = 0
                            s = _6371 + 32
                            t = mem[64] + 196
                            while idx < _8585:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, ext_call.return_data[0]), mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _8585) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9447 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _9455 = mem[_9447]
                            require mem[_9447] <= test266151307()
                            require _9447 + return_data.size > _9447 + mem[_9447] + 31
                            _9467 = mem[_9447 + mem[_9447]]
                            if mem[_9447 + mem[_9447]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_9447 + mem[_9447]]) + 1 < 0 or _9447 + ceil32(return_data.size) + ceil32(32 * mem[_9447 + mem[_9447]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _9447 + ceil32(return_data.size) + ceil32(32 * mem[_9447 + mem[_9447]]) + 1
                            mem[_9447 + ceil32(return_data.size)] = _9467
                            require _9455 + (32 * _9467) + 32 <= return_data.size
                            mem[_9447 + ceil32(return_data.size) + 32 len 32 * _9467] = mem[_9447 + _9455 + 32 len 32 * _9467]
                            if _9467 < 1:
                                revert with 0, 17
                            if _9467 - 1 >= _9467:
                                revert with 0, 50
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAAddress)
                            staticcall tokenAAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10001 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10009 = mem[_10001]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenBAddress)
                            staticcall tokenBAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10033 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10043 = mem[_10033]
                            if _10009 <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(sub_12accf93Address)
                                staticcall sub_12accf93Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10093 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(masterchefAddress)
                                if not sub_4fe30970:
                                    call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args sub_beefa4c9, mem[_10093]
                                else:
                                    call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args sub_beefa4c9, mem[_10093], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                            else:
                                if mem[_10033] <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_12accf93Address)
                                    staticcall sub_12accf93Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10111 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(masterchefAddress)
                                    if not sub_4fe30970:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_10111]
                                    else:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_10111], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                else:
                                    if block.timestamp > -601:
                                        revert with 0, 17
                                    mem[mem[64] + 68] = _10009
                                    mem[mem[64] + 100] = _10043
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 196] = this.address
                                    mem[mem[64] + 228] = block.timestamp + 600
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args tokenAAddress, tokenBAddress, _10009, _10043, 0, 0, address(this.address), block.timestamp + 600
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_12accf93Address)
                                    staticcall sub_12accf93Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10233 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(masterchefAddress)
                                    if not sub_4fe30970:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_10233]
                                    else:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_10233], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                        else:
                            mem[0] = 13
                            mem[_6371 + 32] = address(sub_058fb7ce.field_0)
                            if (32 * sub_058fb7ce.length) + 32 <= 64:
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = sub_058fb7ce.length
                                idx = 0
                                s = _6371 + 32
                                t = mem[64] + 100
                                while idx < sub_058fb7ce.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, ext_call.return_data[0]), Array(len=sub_058fb7ce.length, data=mem[mem[64] + 100 len 32 * sub_058fb7ce.length])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7462 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7478 = mem[_7462]
                                require mem[_7462] <= test266151307()
                                require _7462 + return_data.size > _7462 + mem[_7462] + 31
                                _7496 = mem[_7462 + mem[_7462]]
                                if mem[_7462 + mem[_7462]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_7462 + mem[_7462]]) + 1 < 0 or _7462 + ceil32(return_data.size) + ceil32(32 * mem[_7462 + mem[_7462]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _7462 + ceil32(return_data.size) + ceil32(32 * mem[_7462 + mem[_7462]]) + 1
                                mem[_7462 + ceil32(return_data.size)] = _7496
                                require _7478 + (32 * _7496) + 32 <= return_data.size
                                mem[_7462 + ceil32(return_data.size) + 32 len 32 * _7496] = mem[_7462 + _7478 + 32 len 32 * _7496]
                                if _7496 < 1:
                                    revert with 0, 17
                                if _7496 - 1 >= _7496:
                                    revert with 0, 50
                                if mem[(32 * _7496 - 1) + _7462 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _7496 - 1) + _7462 + ceil32(return_data.size) + 32]:
                                    revert with 0, 17
                                if block.timestamp > -601:
                                    revert with 0, 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                                mem[mem[64] + 36] = mem[(32 * _7496 - 1) + _7462 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                mem[mem[64] + 68] = 160
                                _8586 = mem[_6371]
                                mem[mem[64] + 164] = mem[_6371]
                                idx = 0
                                s = _6371 + 32
                                t = mem[64] + 196
                                while idx < _8586:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp + 600
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, ext_call.return_data[0]), mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _8586) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9448 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _9456 = mem[_9448]
                                require mem[_9448] <= test266151307()
                                require _9448 + return_data.size > _9448 + mem[_9448] + 31
                                _9468 = mem[_9448 + mem[_9448]]
                                if mem[_9448 + mem[_9448]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_9448 + mem[_9448]]) + 1 < 0 or _9448 + ceil32(return_data.size) + ceil32(32 * mem[_9448 + mem[_9448]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _9448 + ceil32(return_data.size) + ceil32(32 * mem[_9448 + mem[_9448]]) + 1
                                mem[_9448 + ceil32(return_data.size)] = _9468
                                require _9456 + (32 * _9468) + 32 <= return_data.size
                                mem[_9448 + ceil32(return_data.size) + 32 len 32 * _9468] = mem[_9448 + _9456 + 32 len 32 * _9468]
                                if _9468 < 1:
                                    revert with 0, 17
                                if _9468 - 1 >= _9468:
                                    revert with 0, 50
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenAAddress)
                                staticcall tokenAAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10002 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10010 = mem[_10002]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenBAddress)
                                staticcall tokenBAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10035 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10045 = mem[_10035]
                                if _10010 <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_12accf93Address)
                                    staticcall sub_12accf93Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10096 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(masterchefAddress)
                                    if not sub_4fe30970:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_10096]
                                    else:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_10096], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                else:
                                    if mem[_10035] <= 0:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_12accf93Address)
                                        staticcall sub_12accf93Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10112 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require ext_code.size(masterchefAddress)
                                        if not sub_4fe30970:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_10112]
                                        else:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_10112], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                    else:
                                        if block.timestamp > -601:
                                            revert with 0, 17
                                        mem[mem[64] + 68] = _10010
                                        mem[mem[64] + 100] = _10045
                                        mem[mem[64] + 132] = 0
                                        mem[mem[64] + 164] = 0
                                        mem[mem[64] + 196] = this.address
                                        mem[mem[64] + 228] = block.timestamp + 600
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                             gas gas_remaining wei
                                            args tokenAAddress, tokenBAddress, _10010, _10045, 0, 0, address(this.address), block.timestamp + 600
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_12accf93Address)
                                        staticcall sub_12accf93Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10234 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require ext_code.size(masterchefAddress)
                                        if not sub_4fe30970:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_10234]
                                        else:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_10234], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                            else:
                                mem[_6371 + 64] = address(sub_058fb7ce.field_256)
                                idx = _6371 + 64
                                s = 1
                                while _6371 + (32 * sub_058fb7ce.length) > idx:
                                    mem[idx + 32] = sub_058fb7ce[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = sub_058fb7ce.length
                                idx = 0
                                s = _6371 + 32
                                t = mem[64] + 100
                                while idx < sub_058fb7ce.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, ext_call.return_data[0]), Array(len=sub_058fb7ce.length, data=mem[mem[64] + 100 len 32 * sub_058fb7ce.length])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9452 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _9462 = mem[_9452]
                                require mem[_9452] <= test266151307()
                                require _9452 + return_data.size > _9452 + mem[_9452] + 31
                                _9472 = mem[_9452 + mem[_9452]]
                                if mem[_9452 + mem[_9452]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_9452 + mem[_9452]]) + 1 < 0 or _9452 + ceil32(return_data.size) + ceil32(32 * mem[_9452 + mem[_9452]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _9452 + ceil32(return_data.size) + ceil32(32 * mem[_9452 + mem[_9452]]) + 1
                                mem[_9452 + ceil32(return_data.size)] = _9472
                                require _9462 + (32 * _9472) + 32 <= return_data.size
                                mem[_9452 + ceil32(return_data.size) + 32 len 32 * _9472] = mem[_9452 + _9462 + 32 len 32 * _9472]
                                if _9472 < 1:
                                    revert with 0, 17
                                if _9472 - 1 >= _9472:
                                    revert with 0, 50
                                if mem[(32 * _9472 - 1) + _9452 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _9472 - 1) + _9452 + ceil32(return_data.size) + 32]:
                                    revert with 0, 17
                                if block.timestamp > -601:
                                    revert with 0, 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                                mem[mem[64] + 36] = mem[(32 * _9472 - 1) + _9452 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                mem[mem[64] + 68] = 160
                                _10034 = mem[_6371]
                                mem[mem[64] + 164] = mem[_6371]
                                idx = 0
                                s = _6371 + 32
                                t = mem[64] + 196
                                while idx < _10034:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp + 600
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, ext_call.return_data[0]), mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _10034) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10398 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10400 = mem[_10398]
                                require mem[_10398] <= test266151307()
                                require _10398 + return_data.size > _10398 + mem[_10398] + 31
                                _10402 = mem[_10398 + mem[_10398]]
                                if mem[_10398 + mem[_10398]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_10398 + mem[_10398]]) + 1 < 0 or _10398 + ceil32(return_data.size) + ceil32(32 * mem[_10398 + mem[_10398]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _10398 + ceil32(return_data.size) + ceil32(32 * mem[_10398 + mem[_10398]]) + 1
                                mem[_10398 + ceil32(return_data.size)] = _10402
                                require _10400 + (32 * _10402) + 32 <= return_data.size
                                mem[_10398 + ceil32(return_data.size) + 32 len 32 * _10402] = mem[_10398 + _10400 + 32 len 32 * _10402]
                                if _10402 < 1:
                                    revert with 0, 17
                                if _10402 - 1 >= _10402:
                                    revert with 0, 50
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenAAddress)
                                staticcall tokenAAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10502 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10504 = mem[_10502]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenBAddress)
                                staticcall tokenBAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10510 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10512 = mem[_10510]
                                if _10504 <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_12accf93Address)
                                    staticcall sub_12accf93Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10522 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(masterchefAddress)
                                    if not sub_4fe30970:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_10522]
                                    else:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_10522], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                else:
                                    if mem[_10510] <= 0:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_12accf93Address)
                                        staticcall sub_12accf93Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10528 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require ext_code.size(masterchefAddress)
                                        if not sub_4fe30970:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_10528]
                                        else:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_10528], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                    else:
                                        if block.timestamp > -601:
                                            revert with 0, 17
                                        mem[mem[64] + 68] = _10504
                                        mem[mem[64] + 100] = _10512
                                        mem[mem[64] + 132] = 0
                                        mem[mem[64] + 164] = 0
                                        mem[mem[64] + 196] = this.address
                                        mem[mem[64] + 228] = block.timestamp + 600
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                             gas gas_remaining wei
                                            args tokenAAddress, tokenBAddress, _10504, _10512, 0, 0, address(this.address), block.timestamp + 600
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_12accf93Address)
                                        staticcall sub_12accf93Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10562 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require ext_code.size(masterchefAddress)
                                        if not sub_4fe30970:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_10562]
                                        else:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_10562], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[164] = 0xeac685b543b2e851251c91f21b74350ffdcca0e6
        require ext_code.size(masterchefAddress)
        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args sub_beefa4c9, 0, 0xeac685b543b2e851251c91f21b74350ffdcca0e6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[100] = this.address
        require ext_code.size(sub_24c31bf9Address)
        staticcall sub_24c31bf9Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 10:
            if not sub_a65c8097:
                if sub_ceebf843:
                    mem[ceil32(return_data.size) + 100] = this.address
                    require ext_code.size(sub_24c31bf9Address)
                    staticcall sub_24c31bf9Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(return_data.size)) + 96] = sub_98830518.length
                    if sub_610fb0af:
                        if not sub_98830518.length:
                            mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 132] = ext_call.return_data[0]
                            mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 164] = 64
                            mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 196] = sub_98830518.length
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 128
                            t = (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 228
                            while idx < sub_98830518.length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 132 len (96 * sub_98830518.length) + 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128
                            require return_data.size >= 32
                            _620 = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28]
                            require mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] <= test266151307()
                            require (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + return_data.size + 128 > (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 159
                            _632 = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                            if mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 1 < 0 or (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129 > test266151307():
                                revert with 0, 65
                            mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129
                            mem[(4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128] = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                            require _620 + (32 * _632) + 32 <= return_data.size
                            mem[(4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160 len 32 * _632] = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + _620 + 160 len 32 * _632]
                            if _632 < 1:
                                revert with 0, 17
                            if _632 - 1 >= _632:
                                revert with 0, 50
                            if mem[(32 * _632 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] and slippageFactor > -1 / mem[(32 * _632 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160]:
                                revert with 0, 17
                            if block.timestamp > -601:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0]
                            mem[mem[64] + 36] = mem[(32 * _632 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] * slippageFactor / 1000
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = sub_98830518.length
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 128
                            t = mem[64] + 196
                            while idx < sub_98830518.length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], mem[(32 * _632 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] * slippageFactor / 1000, Array(len=sub_98830518.length, data=mem[mem[64] + 196 len 32 * sub_98830518.length]), address(this.address), block.timestamp + 600
                        else:
                            mem[(2 * ceil32(return_data.size)) + 128] = address(sub_98830518.field_0)
                            if (32 * sub_98830518.length) + 32 <= 64:
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 132] = ext_call.return_data[0]
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 164] = 64
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 196] = sub_98830518.length
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 128
                                t = (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 228
                                while idx < sub_98830518.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 132 len (96 * sub_98830518.length) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128
                                require return_data.size >= 32
                                _621 = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28]
                                require mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + return_data.size + 128 > (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 159
                                _633 = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                                if mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 1 < 0 or (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129 > test266151307():
                                    revert with 0, 65
                                mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129
                                mem[(4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128] = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                                require _621 + (32 * _633) + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160 len 32 * _633] = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + _621 + 160 len 32 * _633]
                                if _633 < 1:
                                    revert with 0, 17
                                if _633 - 1 >= _633:
                                    revert with 0, 50
                                if mem[(32 * _633 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] and slippageFactor > -1 / mem[(32 * _633 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160]:
                                    revert with 0, 17
                                if block.timestamp > -601:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0]
                                mem[mem[64] + 36] = mem[(32 * _633 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] * slippageFactor / 1000
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = sub_98830518.length
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 128
                                t = mem[64] + 196
                                while idx < sub_98830518.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp + 600
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[(32 * _633 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] * slippageFactor / 1000, Array(len=sub_98830518.length, data=mem[mem[64] + 196 len 32 * sub_98830518.length]), address(this.address), block.timestamp + 600
                            else:
                                mem[(2 * ceil32(return_data.size)) + 160] = address(sub_98830518.field_256)
                                idx = (2 * ceil32(return_data.size)) + 160
                                s = 1
                                while (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 96 > idx:
                                    mem[idx + 32] = sub_98830518[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 132] = ext_call.return_data[0]
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 164] = 64
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 196] = sub_98830518.length
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 128
                                t = (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 228
                                while idx < sub_98830518.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 132 len (96 * sub_98830518.length) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128
                                require return_data.size >= 32
                                _2767 = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28]
                                require mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + return_data.size + 128 > (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 159
                                _2785 = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                                if mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 1 < 0 or (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129 > test266151307():
                                    revert with 0, 65
                                mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129
                                mem[(4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128] = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                                require _2767 + (32 * _2785) + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160 len 32 * _2785] = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + _2767 + 160 len 32 * _2785]
                                if _2785 < 1:
                                    revert with 0, 17
                                if _2785 - 1 >= _2785:
                                    revert with 0, 50
                                if mem[(32 * _2785 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] and slippageFactor > -1 / mem[(32 * _2785 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160]:
                                    revert with 0, 17
                                if block.timestamp > -601:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0]
                                mem[mem[64] + 36] = mem[(32 * _2785 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] * slippageFactor / 1000
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = sub_98830518.length
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 128
                                t = mem[64] + 196
                                while idx < sub_98830518.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp + 600
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[(32 * _2785 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] * slippageFactor / 1000, Array(len=sub_98830518.length, data=mem[mem[64] + 196 len 32 * sub_98830518.length]), address(this.address), block.timestamp + 600
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[(2 * ceil32(return_data.size)) + 96] < 1:
                            revert with 0, 17
                        if mem[(2 * ceil32(return_data.size)) + 96] - 1 >= mem[(2 * ceil32(return_data.size)) + 96]:
                            revert with 0, 50
                        require ext_code.size(mem[(32 * mem[(2 * ceil32(return_data.size)) + 96] - 1) + (2 * ceil32(return_data.size)) + 140 len 20])
                        staticcall mem[(32 * mem[(2 * ceil32(return_data.size)) + 96] - 1) + (2 * ceil32(return_data.size)) + 140 len 20].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    else:
                        if not sub_98830518.length:
                            mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 132] = ext_call.return_data[0]
                            mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 164] = 64
                            mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 196] = sub_98830518.length
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 128
                            t = (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 228
                            while idx < sub_98830518.length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 132 len (96 * sub_98830518.length) + 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128
                            require return_data.size >= 32
                            _618 = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28]
                            require mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] <= test266151307()
                            require (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + return_data.size + 128 > (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 159
                            _630 = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                            if mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 1 < 0 or (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129 > test266151307():
                                revert with 0, 65
                            mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129
                            mem[(4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128] = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                            require _618 + (32 * _630) + 32 <= return_data.size
                            mem[(4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160 len 32 * _630] = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + _618 + 160 len 32 * _630]
                            if _630 < 1:
                                revert with 0, 17
                            if _630 - 1 >= _630:
                                revert with 0, 50
                            if mem[(32 * _630 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] and slippageFactor > -1 / mem[(32 * _630 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160]:
                                revert with 0, 17
                            if block.timestamp > -601:
                                revert with 0, 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0]
                            mem[mem[64] + 36] = mem[(32 * _630 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] * slippageFactor / 1000
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = sub_98830518.length
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 128
                            t = mem[64] + 196
                            while idx < sub_98830518.length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], mem[(32 * _630 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] * slippageFactor / 1000, Array(len=sub_98830518.length, data=mem[mem[64] + 196 len 32 * sub_98830518.length]), address(this.address), block.timestamp + 600
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2742 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2742] <= test266151307()
                            require _2742 + return_data.size > _2742 + mem[_2742] + 31
                            if mem[_2742 + mem[_2742]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_2742 + mem[_2742]]) + 1 < 0 or _2742 + ceil32(return_data.size) + ceil32(32 * mem[_2742 + mem[_2742]]) + 1 > test266151307():
                                revert with 0, 65
                            require mem[_2742] + (32 * mem[_2742 + mem[_2742]]) + 32 <= return_data.size
                            if mem[_2742 + mem[_2742]] < 1:
                                revert with 0, 17
                            if mem[_2742 + mem[_2742]] - 1 >= mem[_2742 + mem[_2742]]:
                                revert with 0, 50
                        else:
                            mem[0] = 8
                            mem[(2 * ceil32(return_data.size)) + 128] = address(sub_98830518.field_0)
                            if (32 * sub_98830518.length) + 32 <= 64:
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 132] = ext_call.return_data[0]
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 164] = 64
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 196] = sub_98830518.length
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 128
                                t = (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 228
                                while idx < sub_98830518.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 132 len (96 * sub_98830518.length) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128
                                require return_data.size >= 32
                                _619 = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28]
                                require mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + return_data.size + 128 > (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 159
                                _631 = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                                if mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 1 < 0 or (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129 > test266151307():
                                    revert with 0, 65
                                mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129
                                mem[(4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128] = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                                require _619 + (32 * _631) + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160 len 32 * _631] = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + _619 + 160 len 32 * _631]
                                if _631 < 1:
                                    revert with 0, 17
                                if _631 - 1 >= _631:
                                    revert with 0, 50
                                if mem[(32 * _631 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] and slippageFactor > -1 / mem[(32 * _631 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160]:
                                    revert with 0, 17
                                if block.timestamp > -601:
                                    revert with 0, 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0]
                                mem[mem[64] + 36] = mem[(32 * _631 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] * slippageFactor / 1000
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = sub_98830518.length
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 128
                                t = mem[64] + 196
                                while idx < sub_98830518.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp + 600
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[(32 * _631 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] * slippageFactor / 1000, Array(len=sub_98830518.length, data=mem[mem[64] + 196 len 32 * sub_98830518.length]), address(this.address), block.timestamp + 600
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2743 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2743] <= test266151307()
                                require _2743 + return_data.size > _2743 + mem[_2743] + 31
                                if mem[_2743 + mem[_2743]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_2743 + mem[_2743]]) + 1 < 0 or _2743 + ceil32(return_data.size) + ceil32(32 * mem[_2743 + mem[_2743]]) + 1 > test266151307():
                                    revert with 0, 65
                                require mem[_2743] + (32 * mem[_2743 + mem[_2743]]) + 32 <= return_data.size
                                if mem[_2743 + mem[_2743]] < 1:
                                    revert with 0, 17
                                if mem[_2743 + mem[_2743]] - 1 >= mem[_2743 + mem[_2743]]:
                                    revert with 0, 50
                            else:
                                mem[(2 * ceil32(return_data.size)) + 160] = address(sub_98830518.field_256)
                                idx = (2 * ceil32(return_data.size)) + 160
                                s = 1
                                while (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 96 > idx:
                                    mem[idx + 32] = sub_98830518[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 132] = ext_call.return_data[0]
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 164] = 64
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 196] = sub_98830518.length
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 128
                                t = (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 228
                                while idx < sub_98830518.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 132 len (96 * sub_98830518.length) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128
                                require return_data.size >= 32
                                _2766 = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28]
                                require mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + return_data.size + 128 > (2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 159
                                _2783 = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                                if mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 1 < 0 or (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129 > test266151307():
                                    revert with 0, 65
                                mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129
                                mem[(4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128] = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                                require _2766 + (32 * _2783) + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160 len 32 * _2783] = mem[(2 * ceil32(return_data.size)) + (32 * sub_98830518.length) + _2766 + 160 len 32 * _2783]
                                if _2783 < 1:
                                    revert with 0, 17
                                if _2783 - 1 >= _2783:
                                    revert with 0, 50
                                if mem[(32 * _2783 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] and slippageFactor > -1 / mem[(32 * _2783 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160]:
                                    revert with 0, 17
                                if block.timestamp > -601:
                                    revert with 0, 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0]
                                mem[mem[64] + 36] = mem[(32 * _2783 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] * slippageFactor / 1000
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = sub_98830518.length
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 128
                                t = mem[64] + 196
                                while idx < sub_98830518.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp + 600
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[(32 * _2783 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_98830518.length) + 160] * slippageFactor / 1000, Array(len=sub_98830518.length, data=mem[mem[64] + 196 len 32 * sub_98830518.length]), address(this.address), block.timestamp + 600
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5159 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5159] <= test266151307()
                                require _5159 + return_data.size > _5159 + mem[_5159] + 31
                                if mem[_5159 + mem[_5159]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_5159 + mem[_5159]]) + 1 < 0 or _5159 + ceil32(return_data.size) + ceil32(32 * mem[_5159 + mem[_5159]]) + 1 > test266151307():
                                    revert with 0, 65
                                require mem[_5159] + (32 * mem[_5159 + mem[_5159]]) + 32 <= return_data.size
                                if mem[_5159 + mem[_5159]] < 1:
                                    revert with 0, 17
                                if mem[_5159 + mem[_5159]] - 1 >= mem[_5159 + mem[_5159]]:
                                    revert with 0, 50
            else:
                mem[ceil32(return_data.size) + 100] = this.address
                require ext_code.size(sub_24c31bf9Address)
                staticcall sub_24c31bf9Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(2 * ceil32(return_data.size)) + 96] = sub_f889c1c7.length
                if sub_610fb0af:
                    if not sub_f889c1c7.length:
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 132] = ext_call.return_data[0] / 2
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 164] = 64
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 196] = sub_f889c1c7.length
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = (2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 228
                        while idx < sub_f889c1c7.length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 132 len (96 * sub_f889c1c7.length) + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128
                        require return_data.size >= 32
                        _623 = mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                        require mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + return_data.size + 128 > (2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 159
                        _635 = mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]
                        if mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 1 < 0 or (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 129 > test266151307():
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 129
                        mem[(4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128] = _635
                        require _623 + (32 * _635) + 32 <= return_data.size
                        mem[(4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160 len 32 * _635] = mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + _623 + 160 len 32 * _635]
                        if _635 < 1:
                            revert with 0, 17
                        if _635 - 1 >= _635:
                            revert with 0, 50
                        if mem[(32 * _635 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160] and slippageFactor > -1 / mem[(32 * _635 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160]:
                            revert with 0, 17
                        if block.timestamp > -601:
                            revert with 0, 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] / 2
                        mem[mem[64] + 36] = mem[(32 * _635 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160] * slippageFactor / 1000
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = sub_f889c1c7.length
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < sub_f889c1c7.length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 600
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), mem[(32 * _635 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160] * slippageFactor / 1000, Array(len=sub_f889c1c7.length, data=mem[mem[64] + 196 len 32 * sub_f889c1c7.length]), address(this.address), block.timestamp + 600
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[(2 * ceil32(return_data.size)) + 96] < 1:
                            revert with 0, 17
                        if mem[(2 * ceil32(return_data.size)) + 96] - 1 >= mem[(2 * ceil32(return_data.size)) + 96]:
                            revert with 0, 50
                        require ext_code.size(mem[(32 * mem[(2 * ceil32(return_data.size)) + 96] - 1) + (2 * ceil32(return_data.size)) + 140 len 20])
                        staticcall mem[(32 * mem[(2 * ceil32(return_data.size)) + 96] - 1) + (2 * ceil32(return_data.size)) + 140 len 20].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2869 = mem[64]
                        mem[64] = mem[64] + (32 * sub_058fb7ce.length) + 32
                        mem[_2869] = sub_058fb7ce.length
                        if not sub_058fb7ce.length:
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] / 2
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = sub_058fb7ce.length
                            idx = 0
                            s = _2869 + 32
                            t = mem[64] + 100
                            while idx < sub_058fb7ce.length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, ext_call.return_data[0]), Array(len=sub_058fb7ce.length, data=mem[mem[64] + 100 len 32 * sub_058fb7ce.length])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4020 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4051 = mem[_4020]
                            require mem[_4020] <= test266151307()
                            require _4020 + return_data.size > _4020 + mem[_4020] + 31
                            _4056 = mem[_4020 + mem[_4020]]
                            if mem[_4020 + mem[_4020]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_4020 + mem[_4020]]) + 1 < 0 or _4020 + ceil32(return_data.size) + ceil32(32 * mem[_4020 + mem[_4020]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _4020 + ceil32(return_data.size) + ceil32(32 * mem[_4020 + mem[_4020]]) + 1
                            mem[_4020 + ceil32(return_data.size)] = _4056
                            require _4051 + (32 * _4056) + 32 <= return_data.size
                            mem[_4020 + ceil32(return_data.size) + 32 len 32 * _4056] = mem[_4020 + _4051 + 32 len 32 * _4056]
                            if _4056 < 1:
                                revert with 0, 17
                            if _4056 - 1 >= _4056:
                                revert with 0, 50
                            if mem[(32 * _4056 - 1) + _4020 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _4056 - 1) + _4020 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if block.timestamp > -601:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] / 2
                            mem[mem[64] + 36] = mem[(32 * _4056 - 1) + _4020 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                            mem[mem[64] + 68] = 160
                            _5275 = mem[_2869]
                            mem[mem[64] + 164] = mem[_2869]
                            idx = 0
                            s = _2869 + 32
                            t = mem[64] + 196
                            while idx < _5275:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, ext_call.return_data[0]), mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _5275) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[_2869] < 1:
                                revert with 0, 17
                            if mem[_2869] - 1 >= mem[_2869]:
                                revert with 0, 50
                            require ext_code.size(mem[(32 * mem[_2869] - 1) + _2869 + 44 len 20])
                            staticcall mem[(32 * mem[_2869] - 1) + _2869 + 44 len 20].0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAAddress)
                            staticcall tokenAAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6455 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6470 = mem[_6455]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenBAddress)
                            staticcall tokenBAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6510 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6514 = mem[_6510]
                            if _6470 <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(sub_12accf93Address)
                                staticcall sub_12accf93Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6591 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(masterchefAddress)
                                if not sub_4fe30970:
                                    call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args sub_beefa4c9, mem[_6591]
                                else:
                                    call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args sub_beefa4c9, mem[_6591], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                            else:
                                if mem[_6510] <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_12accf93Address)
                                    staticcall sub_12accf93Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6602 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(masterchefAddress)
                                    if not sub_4fe30970:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_6602]
                                    else:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_6602], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                else:
                                    if block.timestamp > -601:
                                        revert with 0, 17
                                    mem[mem[64] + 68] = _6470
                                    mem[mem[64] + 100] = _6514
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 196] = this.address
                                    mem[mem[64] + 228] = block.timestamp + 600
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args tokenAAddress, tokenBAddress, _6470, _6514, 0, 0, address(this.address), block.timestamp + 600
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_12accf93Address)
                                    staticcall sub_12accf93Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6726 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(masterchefAddress)
                                    if not sub_4fe30970:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_6726]
                                    else:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_6726], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                        else:
                            mem[0] = 13
                            mem[_2869 + 32] = address(sub_058fb7ce.field_0)
                            if (32 * sub_058fb7ce.length) + 32 <= 64:
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = sub_058fb7ce.length
                                idx = 0
                                s = _2869 + 32
                                t = mem[64] + 100
                                while idx < sub_058fb7ce.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, ext_call.return_data[0]), Array(len=sub_058fb7ce.length, data=mem[mem[64] + 100 len 32 * sub_058fb7ce.length])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4021 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4052 = mem[_4021]
                                require mem[_4021] <= test266151307()
                                require _4021 + return_data.size > _4021 + mem[_4021] + 31
                                _4057 = mem[_4021 + mem[_4021]]
                                if mem[_4021 + mem[_4021]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_4021 + mem[_4021]]) + 1 < 0 or _4021 + ceil32(return_data.size) + ceil32(32 * mem[_4021 + mem[_4021]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _4021 + ceil32(return_data.size) + ceil32(32 * mem[_4021 + mem[_4021]]) + 1
                                mem[_4021 + ceil32(return_data.size)] = _4057
                                require _4052 + (32 * _4057) + 32 <= return_data.size
                                mem[_4021 + ceil32(return_data.size) + 32 len 32 * _4057] = mem[_4021 + _4052 + 32 len 32 * _4057]
                                if _4057 < 1:
                                    revert with 0, 17
                                if _4057 - 1 >= _4057:
                                    revert with 0, 50
                                if mem[(32 * _4057 - 1) + _4021 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _4057 - 1) + _4021 + ceil32(return_data.size) + 32]:
                                    revert with 0, 17
                                if block.timestamp > -601:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                                mem[mem[64] + 36] = mem[(32 * _4057 - 1) + _4021 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                mem[mem[64] + 68] = 160
                                _5276 = mem[_2869]
                                mem[mem[64] + 164] = mem[_2869]
                                idx = 0
                                s = _2869 + 32
                                t = mem[64] + 196
                                while idx < _5276:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp + 600
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, ext_call.return_data[0]), mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _5276) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_2869] < 1:
                                    revert with 0, 17
                                if mem[_2869] - 1 >= mem[_2869]:
                                    revert with 0, 50
                                require ext_code.size(mem[(32 * mem[_2869] - 1) + _2869 + 44 len 20])
                                staticcall mem[(32 * mem[_2869] - 1) + _2869 + 44 len 20].0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenAAddress)
                                staticcall tokenAAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6457 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6471 = mem[_6457]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenBAddress)
                                staticcall tokenBAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6511 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6515 = mem[_6511]
                                if _6471 <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_12accf93Address)
                                    staticcall sub_12accf93Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6595 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(masterchefAddress)
                                    if not sub_4fe30970:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_6595]
                                    else:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_6595], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                else:
                                    if mem[_6511] <= 0:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_12accf93Address)
                                        staticcall sub_12accf93Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6603 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require ext_code.size(masterchefAddress)
                                        if not sub_4fe30970:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_6603]
                                        else:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_6603], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                    else:
                                        if block.timestamp > -601:
                                            revert with 0, 17
                                        mem[mem[64] + 68] = _6471
                                        mem[mem[64] + 100] = _6515
                                        mem[mem[64] + 132] = 0
                                        mem[mem[64] + 164] = 0
                                        mem[mem[64] + 196] = this.address
                                        mem[mem[64] + 228] = block.timestamp + 600
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                             gas gas_remaining wei
                                            args tokenAAddress, tokenBAddress, _6471, _6515, 0, 0, address(this.address), block.timestamp + 600
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_12accf93Address)
                                        staticcall sub_12accf93Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6727 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require ext_code.size(masterchefAddress)
                                        if not sub_4fe30970:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_6727]
                                        else:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_6727], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                            else:
                                mem[_2869 + 64] = address(sub_058fb7ce.field_256)
                                idx = _2869 + 64
                                s = 1
                                while _2869 + (32 * sub_058fb7ce.length) > idx:
                                    mem[idx + 32] = sub_058fb7ce[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = sub_058fb7ce.length
                                idx = 0
                                s = _2869 + 32
                                t = mem[64] + 100
                                while idx < sub_058fb7ce.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, ext_call.return_data[0]), Array(len=sub_058fb7ce.length, data=mem[mem[64] + 100 len 32 * sub_058fb7ce.length])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6317 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6341 = mem[_6317]
                                require mem[_6317] <= test266151307()
                                require _6317 + return_data.size > _6317 + mem[_6317] + 31
                                _6352 = mem[_6317 + mem[_6317]]
                                if mem[_6317 + mem[_6317]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_6317 + mem[_6317]]) + 1 < 0 or _6317 + ceil32(return_data.size) + ceil32(32 * mem[_6317 + mem[_6317]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _6317 + ceil32(return_data.size) + ceil32(32 * mem[_6317 + mem[_6317]]) + 1
                                mem[_6317 + ceil32(return_data.size)] = _6352
                                require _6341 + (32 * _6352) + 32 <= return_data.size
                                mem[_6317 + ceil32(return_data.size) + 32 len 32 * _6352] = mem[_6317 + _6341 + 32 len 32 * _6352]
                                if _6352 < 1:
                                    revert with 0, 17
                                if _6352 - 1 >= _6352:
                                    revert with 0, 50
                                if mem[(32 * _6352 - 1) + _6317 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _6352 - 1) + _6317 + ceil32(return_data.size) + 32]:
                                    revert with 0, 17
                                if block.timestamp > -601:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                                mem[mem[64] + 36] = mem[(32 * _6352 - 1) + _6317 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                mem[mem[64] + 68] = 160
                                _7565 = mem[_2869]
                                mem[mem[64] + 164] = mem[_2869]
                                idx = 0
                                s = _2869 + 32
                                t = mem[64] + 196
                                while idx < _7565:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp + 600
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, ext_call.return_data[0]), mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _7565) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_2869] < 1:
                                    revert with 0, 17
                                if mem[_2869] - 1 >= mem[_2869]:
                                    revert with 0, 50
                                require ext_code.size(mem[(32 * mem[_2869] - 1) + _2869 + 44 len 20])
                                staticcall mem[(32 * mem[_2869] - 1) + _2869 + 44 len 20].0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenAAddress)
                                staticcall tokenAAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8598 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8615 = mem[_8598]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenBAddress)
                                staticcall tokenBAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8673 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8695 = mem[_8673]
                                if _8615 <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_12accf93Address)
                                    staticcall sub_12accf93Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8828 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(masterchefAddress)
                                    if not sub_4fe30970:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_8828]
                                    else:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_8828], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                else:
                                    if mem[_8673] <= 0:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_12accf93Address)
                                        staticcall sub_12accf93Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8845 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require ext_code.size(masterchefAddress)
                                        if not sub_4fe30970:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_8845]
                                        else:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_8845], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                    else:
                                        if block.timestamp > -601:
                                            revert with 0, 17
                                        mem[mem[64] + 68] = _8615
                                        mem[mem[64] + 100] = _8695
                                        mem[mem[64] + 132] = 0
                                        mem[mem[64] + 164] = 0
                                        mem[mem[64] + 196] = this.address
                                        mem[mem[64] + 228] = block.timestamp + 600
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                             gas gas_remaining wei
                                            args tokenAAddress, tokenBAddress, _8615, _8695, 0, 0, address(this.address), block.timestamp + 600
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_12accf93Address)
                                        staticcall sub_12accf93Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9011 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require ext_code.size(masterchefAddress)
                                        if not sub_4fe30970:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_9011]
                                        else:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_9011], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                    else:
                        mem[0] = 12
                        mem[(2 * ceil32(return_data.size)) + 128] = address(sub_f889c1c7.field_0)
                        idx = (2 * ceil32(return_data.size)) + 128
                        s = 0
                        while (2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 96 > idx:
                            mem[idx + 32] = sub_f889c1c7[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 132] = ext_call.return_data[0] / 2
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 164] = 64
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 196] = sub_f889c1c7.length
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = (2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 228
                        while idx < sub_f889c1c7.length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 132 len (96 * sub_f889c1c7.length) + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128
                        require return_data.size >= 32
                        _2769 = mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                        require mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + return_data.size + 128 > (2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 159
                        _2789 = mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]
                        if mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 1 < 0 or (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 129 > test266151307():
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 129
                        mem[(4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128] = _2789
                        require _2769 + (32 * _2789) + 32 <= return_data.size
                        mem[(4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160 len 32 * _2789] = mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + _2769 + 160 len 32 * _2789]
                        if _2789 < 1:
                            revert with 0, 17
                        if _2789 - 1 >= _2789:
                            revert with 0, 50
                        _4053 = mem[(32 * _2789 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160]
                        if mem[(32 * _2789 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160] and slippageFactor > -1 / mem[(32 * _2789 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160]:
                            revert with 0, 17
                        if block.timestamp > -601:
                            revert with 0, 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] / 2
                        mem[mem[64] + 36] = _4053 * slippageFactor / 1000
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = sub_f889c1c7.length
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < sub_f889c1c7.length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 600
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), _4053 * slippageFactor / 1000, Array(len=sub_f889c1c7.length, data=mem[mem[64] + 196 len 32 * sub_f889c1c7.length]), address(this.address), block.timestamp + 600
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[(2 * ceil32(return_data.size)) + 96] < 1:
                            revert with 0, 17
                        if mem[(2 * ceil32(return_data.size)) + 96] - 1 >= mem[(2 * ceil32(return_data.size)) + 96]:
                            revert with 0, 50
                        require ext_code.size(mem[(32 * mem[(2 * ceil32(return_data.size)) + 96] - 1) + (2 * ceil32(return_data.size)) + 140 len 20])
                        staticcall mem[(32 * mem[(2 * ceil32(return_data.size)) + 96] - 1) + (2 * ceil32(return_data.size)) + 140 len 20].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5263 = mem[64]
                        mem[64] = mem[64] + (32 * sub_058fb7ce.length) + 32
                        mem[_5263] = sub_058fb7ce.length
                        if not sub_058fb7ce.length:
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] / 2
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = sub_058fb7ce.length
                            idx = 0
                            s = _5263 + 32
                            t = mem[64] + 100
                            while idx < sub_058fb7ce.length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, ext_call.return_data[0]), Array(len=sub_058fb7ce.length, data=mem[mem[64] + 100 len 32 * sub_058fb7ce.length])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6318 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6342 = mem[_6318]
                            require mem[_6318] <= test266151307()
                            require _6318 + return_data.size > _6318 + mem[_6318] + 31
                            _6354 = mem[_6318 + mem[_6318]]
                            if mem[_6318 + mem[_6318]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_6318 + mem[_6318]]) + 1 < 0 or _6318 + ceil32(return_data.size) + ceil32(32 * mem[_6318 + mem[_6318]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _6318 + ceil32(return_data.size) + ceil32(32 * mem[_6318 + mem[_6318]]) + 1
                            mem[_6318 + ceil32(return_data.size)] = _6354
                            require _6342 + (32 * _6354) + 32 <= return_data.size
                            mem[_6318 + ceil32(return_data.size) + 32 len 32 * _6354] = mem[_6318 + _6342 + 32 len 32 * _6354]
                            if _6354 < 1:
                                revert with 0, 17
                            if _6354 - 1 >= _6354:
                                revert with 0, 50
                            if mem[(32 * _6354 - 1) + _6318 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _6354 - 1) + _6318 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if block.timestamp > -601:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] / 2
                            mem[mem[64] + 36] = mem[(32 * _6354 - 1) + _6318 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                            mem[mem[64] + 68] = 160
                            _7566 = mem[_5263]
                            mem[mem[64] + 164] = mem[_5263]
                            idx = 0
                            s = _5263 + 32
                            t = mem[64] + 196
                            while idx < _7566:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, ext_call.return_data[0]), mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _7566) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[_5263] < 1:
                                revert with 0, 17
                            if mem[_5263] - 1 >= mem[_5263]:
                                revert with 0, 50
                            require ext_code.size(mem[(32 * mem[_5263] - 1) + _5263 + 44 len 20])
                            staticcall mem[(32 * mem[_5263] - 1) + _5263 + 44 len 20].0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAAddress)
                            staticcall tokenAAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8599 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8616 = mem[_8599]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenBAddress)
                            staticcall tokenBAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8674 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8696 = mem[_8674]
                            if _8616 <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(sub_12accf93Address)
                                staticcall sub_12accf93Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8831 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(masterchefAddress)
                                if not sub_4fe30970:
                                    call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args sub_beefa4c9, mem[_8831]
                                else:
                                    call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args sub_beefa4c9, mem[_8831], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                            else:
                                if mem[_8674] <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_12accf93Address)
                                    staticcall sub_12accf93Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8846 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(masterchefAddress)
                                    if not sub_4fe30970:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_8846]
                                    else:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_8846], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                else:
                                    if block.timestamp > -601:
                                        revert with 0, 17
                                    mem[mem[64] + 68] = _8616
                                    mem[mem[64] + 100] = _8696
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 196] = this.address
                                    mem[mem[64] + 228] = block.timestamp + 600
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args tokenAAddress, tokenBAddress, _8616, _8696, 0, 0, address(this.address), block.timestamp + 600
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_12accf93Address)
                                    staticcall sub_12accf93Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9012 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(masterchefAddress)
                                    if not sub_4fe30970:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_9012]
                                    else:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_9012], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                        else:
                            mem[0] = 13
                            mem[_5263 + 32] = address(sub_058fb7ce.field_0)
                            if (32 * sub_058fb7ce.length) + 32 <= 64:
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = sub_058fb7ce.length
                                idx = 0
                                s = _5263 + 32
                                t = mem[64] + 100
                                while idx < sub_058fb7ce.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, ext_call.return_data[0]), Array(len=sub_058fb7ce.length, data=mem[mem[64] + 100 len 32 * sub_058fb7ce.length])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6319 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6343 = mem[_6319]
                                require mem[_6319] <= test266151307()
                                require _6319 + return_data.size > _6319 + mem[_6319] + 31
                                _6355 = mem[_6319 + mem[_6319]]
                                if mem[_6319 + mem[_6319]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_6319 + mem[_6319]]) + 1 < 0 or _6319 + ceil32(return_data.size) + ceil32(32 * mem[_6319 + mem[_6319]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _6319 + ceil32(return_data.size) + ceil32(32 * mem[_6319 + mem[_6319]]) + 1
                                mem[_6319 + ceil32(return_data.size)] = _6355
                                require _6343 + (32 * _6355) + 32 <= return_data.size
                                mem[_6319 + ceil32(return_data.size) + 32 len 32 * _6355] = mem[_6319 + _6343 + 32 len 32 * _6355]
                                if _6355 < 1:
                                    revert with 0, 17
                                if _6355 - 1 >= _6355:
                                    revert with 0, 50
                                if mem[(32 * _6355 - 1) + _6319 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _6355 - 1) + _6319 + ceil32(return_data.size) + 32]:
                                    revert with 0, 17
                                if block.timestamp > -601:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                                mem[mem[64] + 36] = mem[(32 * _6355 - 1) + _6319 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                mem[mem[64] + 68] = 160
                                _7567 = mem[_5263]
                                mem[mem[64] + 164] = mem[_5263]
                                idx = 0
                                s = _5263 + 32
                                t = mem[64] + 196
                                while idx < _7567:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp + 600
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, ext_call.return_data[0]), mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _7567) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_5263] < 1:
                                    revert with 0, 17
                                if mem[_5263] - 1 >= mem[_5263]:
                                    revert with 0, 50
                                require ext_code.size(mem[(32 * mem[_5263] - 1) + _5263 + 44 len 20])
                                staticcall mem[(32 * mem[_5263] - 1) + _5263 + 44 len 20].0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenAAddress)
                                staticcall tokenAAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8601 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8617 = mem[_8601]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenBAddress)
                                staticcall tokenBAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8675 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8697 = mem[_8675]
                                if _8617 <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_12accf93Address)
                                    staticcall sub_12accf93Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8835 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(masterchefAddress)
                                    if not sub_4fe30970:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_8835]
                                    else:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_8835], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                else:
                                    if mem[_8675] <= 0:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_12accf93Address)
                                        staticcall sub_12accf93Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8847 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require ext_code.size(masterchefAddress)
                                        if not sub_4fe30970:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_8847]
                                        else:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_8847], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                    else:
                                        if block.timestamp > -601:
                                            revert with 0, 17
                                        mem[mem[64] + 68] = _8617
                                        mem[mem[64] + 100] = _8697
                                        mem[mem[64] + 132] = 0
                                        mem[mem[64] + 164] = 0
                                        mem[mem[64] + 196] = this.address
                                        mem[mem[64] + 228] = block.timestamp + 600
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                             gas gas_remaining wei
                                            args tokenAAddress, tokenBAddress, _8617, _8697, 0, 0, address(this.address), block.timestamp + 600
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_12accf93Address)
                                        staticcall sub_12accf93Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9013 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require ext_code.size(masterchefAddress)
                                        if not sub_4fe30970:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_9013]
                                        else:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_9013], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                            else:
                                mem[_5263 + 64] = address(sub_058fb7ce.field_256)
                                idx = _5263 + 64
                                s = 1
                                while _5263 + (32 * sub_058fb7ce.length) > idx:
                                    mem[idx + 32] = sub_058fb7ce[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = sub_058fb7ce.length
                                idx = 0
                                s = _5263 + 32
                                t = mem[64] + 100
                                while idx < sub_058fb7ce.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, ext_call.return_data[0]), Array(len=sub_058fb7ce.length, data=mem[mem[64] + 100 len 32 * sub_058fb7ce.length])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8459 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8483 = mem[_8459]
                                require mem[_8459] <= test266151307()
                                require _8459 + return_data.size > _8459 + mem[_8459] + 31
                                _8492 = mem[_8459 + mem[_8459]]
                                if mem[_8459 + mem[_8459]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_8459 + mem[_8459]]) + 1 < 0 or _8459 + ceil32(return_data.size) + ceil32(32 * mem[_8459 + mem[_8459]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _8459 + ceil32(return_data.size) + ceil32(32 * mem[_8459 + mem[_8459]]) + 1
                                mem[_8459 + ceil32(return_data.size)] = _8492
                                require _8483 + (32 * _8492) + 32 <= return_data.size
                                mem[_8459 + ceil32(return_data.size) + 32 len 32 * _8492] = mem[_8459 + _8483 + 32 len 32 * _8492]
                                if _8492 < 1:
                                    revert with 0, 17
                                if _8492 - 1 >= _8492:
                                    revert with 0, 50
                                _9465 = mem[(32 * _8492 - 1) + _8459 + ceil32(return_data.size) + 32]
                                if mem[(32 * _8492 - 1) + _8459 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _8492 - 1) + _8459 + ceil32(return_data.size) + 32]:
                                    revert with 0, 17
                                if block.timestamp > -601:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                                mem[mem[64] + 36] = _9465 * slippageFactor / 1000
                                mem[mem[64] + 68] = 160
                                _9515 = mem[_5263]
                                mem[mem[64] + 164] = mem[_5263]
                                idx = 0
                                s = _5263 + 32
                                t = mem[64] + 196
                                while idx < _9515:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp + 600
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, ext_call.return_data[0]), _9465 * slippageFactor / 1000, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _9515) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_5263] < 1:
                                    revert with 0, 17
                                if mem[_5263] - 1 >= mem[_5263]:
                                    revert with 0, 50
                                require ext_code.size(mem[(32 * mem[_5263] - 1) + _5263 + 44 len 20])
                                staticcall mem[(32 * mem[_5263] - 1) + _5263 + 44 len 20].0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenAAddress)
                                staticcall tokenAAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10041 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10051 = mem[_10041]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenBAddress)
                                staticcall tokenBAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10083 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10109 = mem[_10083]
                                if _10051 <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_12accf93Address)
                                    staticcall sub_12accf93Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10229 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(masterchefAddress)
                                    if not sub_4fe30970:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_10229]
                                    else:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_10229], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                else:
                                    if mem[_10083] <= 0:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_12accf93Address)
                                        staticcall sub_12accf93Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10239 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require ext_code.size(masterchefAddress)
                                        if not sub_4fe30970:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_10239]
                                        else:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_10239], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                    else:
                                        if block.timestamp > -601:
                                            revert with 0, 17
                                        mem[mem[64] + 68] = _10051
                                        mem[mem[64] + 100] = _10109
                                        mem[mem[64] + 132] = 0
                                        mem[mem[64] + 164] = 0
                                        mem[mem[64] + 196] = this.address
                                        mem[mem[64] + 228] = block.timestamp + 600
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                             gas gas_remaining wei
                                            args tokenAAddress, tokenBAddress, _10051, _10109, 0, 0, address(this.address), block.timestamp + 600
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_12accf93Address)
                                        staticcall sub_12accf93Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10311 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require ext_code.size(masterchefAddress)
                                        if not sub_4fe30970:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_10311]
                                        else:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_10311], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                else:
                    if not sub_f889c1c7.length:
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 132] = ext_call.return_data[0] / 2
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 164] = 64
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 196] = sub_f889c1c7.length
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = (2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 228
                        while idx < sub_f889c1c7.length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 132 len (96 * sub_f889c1c7.length) + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128
                        require return_data.size >= 32
                        _622 = mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                        require mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + return_data.size + 128 > (2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 159
                        _634 = mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]
                        if mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 1 < 0 or (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 129 > test266151307():
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 129
                        mem[(4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128] = _634
                        require _622 + (32 * _634) + 32 <= return_data.size
                        mem[(4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160 len 32 * _634] = mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + _622 + 160 len 32 * _634]
                        if _634 < 1:
                            revert with 0, 17
                        if _634 - 1 >= _634:
                            revert with 0, 50
                        if mem[(32 * _634 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160] and slippageFactor > -1 / mem[(32 * _634 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160]:
                            revert with 0, 17
                        if block.timestamp > -601:
                            revert with 0, 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] / 2
                        mem[mem[64] + 36] = mem[(32 * _634 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160] * slippageFactor / 1000
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = sub_f889c1c7.length
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < sub_f889c1c7.length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 600
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), mem[(32 * _634 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160] * slippageFactor / 1000, Array(len=sub_f889c1c7.length, data=mem[mem[64] + 196 len 32 * sub_f889c1c7.length]), address(this.address), block.timestamp + 600
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2746 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2761 = mem[_2746]
                        require mem[_2746] <= test266151307()
                        require _2746 + return_data.size > _2746 + mem[_2746] + 31
                        _2775 = mem[_2746 + mem[_2746]]
                        if mem[_2746 + mem[_2746]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_2746 + mem[_2746]]) + 1 < 0 or _2746 + ceil32(return_data.size) + ceil32(32 * mem[_2746 + mem[_2746]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _2746 + ceil32(return_data.size) + ceil32(32 * mem[_2746 + mem[_2746]]) + 1
                        mem[_2746 + ceil32(return_data.size)] = _2775
                        require _2761 + (32 * _2775) + 32 <= return_data.size
                        mem[_2746 + ceil32(return_data.size) + 32 len 32 * _2775] = mem[_2746 + _2761 + 32 len 32 * _2775]
                        if _2775 < 1:
                            revert with 0, 17
                        if _2775 - 1 >= _2775:
                            revert with 0, 50
                        _4061 = mem[64]
                        mem[64] = mem[64] + (32 * sub_058fb7ce.length) + 32
                        mem[_4061] = sub_058fb7ce.length
                        if not sub_058fb7ce.length:
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] / 2
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = sub_058fb7ce.length
                            idx = 0
                            s = _4061 + 32
                            t = mem[64] + 100
                            while idx < sub_058fb7ce.length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, ext_call.return_data[0]), Array(len=sub_058fb7ce.length, data=mem[mem[64] + 100 len 32 * sub_058fb7ce.length])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5166 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5181 = mem[_5166]
                            require mem[_5166] <= test266151307()
                            require _5166 + return_data.size > _5166 + mem[_5166] + 31
                            _5196 = mem[_5166 + mem[_5166]]
                            if mem[_5166 + mem[_5166]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_5166 + mem[_5166]]) + 1 < 0 or _5166 + ceil32(return_data.size) + ceil32(32 * mem[_5166 + mem[_5166]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _5166 + ceil32(return_data.size) + ceil32(32 * mem[_5166 + mem[_5166]]) + 1
                            mem[_5166 + ceil32(return_data.size)] = _5196
                            require _5181 + (32 * _5196) + 32 <= return_data.size
                            mem[_5166 + ceil32(return_data.size) + 32 len 32 * _5196] = mem[_5166 + _5181 + 32 len 32 * _5196]
                            if _5196 < 1:
                                revert with 0, 17
                            if _5196 - 1 >= _5196:
                                revert with 0, 50
                            _6337 = mem[(32 * _5196 - 1) + _5166 + ceil32(return_data.size) + 32]
                            if mem[(32 * _5196 - 1) + _5166 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _5196 - 1) + _5166 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if block.timestamp > -601:
                                revert with 0, 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] / 2
                            mem[mem[64] + 36] = _6337 * slippageFactor / 1000
                            mem[mem[64] + 68] = 160
                            _6442 = mem[_4061]
                            mem[mem[64] + 164] = mem[_4061]
                            idx = 0
                            s = _4061 + 32
                            t = mem[64] + 196
                            while idx < _6442:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, ext_call.return_data[0]), _6337 * slippageFactor / 1000, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _6442) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7457 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7471 = mem[_7457]
                            require mem[_7457] <= test266151307()
                            require _7457 + return_data.size > _7457 + mem[_7457] + 31
                            _7492 = mem[_7457 + mem[_7457]]
                            if mem[_7457 + mem[_7457]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_7457 + mem[_7457]]) + 1 < 0 or _7457 + ceil32(return_data.size) + ceil32(32 * mem[_7457 + mem[_7457]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _7457 + ceil32(return_data.size) + ceil32(32 * mem[_7457 + mem[_7457]]) + 1
                            mem[_7457 + ceil32(return_data.size)] = _7492
                            require _7471 + (32 * _7492) + 32 <= return_data.size
                            mem[_7457 + ceil32(return_data.size) + 32 len 32 * _7492] = mem[_7457 + _7471 + 32 len 32 * _7492]
                            if _7492 < 1:
                                revert with 0, 17
                            if _7492 - 1 >= _7492:
                                revert with 0, 50
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAAddress)
                            staticcall tokenAAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8534 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8545 = mem[_8534]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenBAddress)
                            staticcall tokenBAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8588 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8607 = mem[_8588]
                            if _8545 <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(sub_12accf93Address)
                                staticcall sub_12accf93Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8689 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(masterchefAddress)
                                if not sub_4fe30970:
                                    call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args sub_beefa4c9, mem[_8689]
                                else:
                                    call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args sub_beefa4c9, mem[_8689], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                            else:
                                if mem[_8588] <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_12accf93Address)
                                    staticcall sub_12accf93Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8700 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(masterchefAddress)
                                    if not sub_4fe30970:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_8700]
                                    else:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_8700], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                else:
                                    if block.timestamp > -601:
                                        revert with 0, 17
                                    mem[mem[64] + 68] = _8545
                                    mem[mem[64] + 100] = _8607
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 196] = this.address
                                    mem[mem[64] + 228] = block.timestamp + 600
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args tokenAAddress, tokenBAddress, _8545, _8607, 0, 0, address(this.address), block.timestamp + 600
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_12accf93Address)
                                    staticcall sub_12accf93Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8843 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(masterchefAddress)
                                    if not sub_4fe30970:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_8843]
                                    else:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_8843], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                        else:
                            mem[0] = 13
                            mem[_4061 + 32] = address(sub_058fb7ce.field_0)
                            if (32 * sub_058fb7ce.length) + 32 <= 64:
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = sub_058fb7ce.length
                                idx = 0
                                s = _4061 + 32
                                t = mem[64] + 100
                                while idx < sub_058fb7ce.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, ext_call.return_data[0]), Array(len=sub_058fb7ce.length, data=mem[mem[64] + 100 len 32 * sub_058fb7ce.length])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5167 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5182 = mem[_5167]
                                require mem[_5167] <= test266151307()
                                require _5167 + return_data.size > _5167 + mem[_5167] + 31
                                _5197 = mem[_5167 + mem[_5167]]
                                if mem[_5167 + mem[_5167]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_5167 + mem[_5167]]) + 1 < 0 or _5167 + ceil32(return_data.size) + ceil32(32 * mem[_5167 + mem[_5167]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _5167 + ceil32(return_data.size) + ceil32(32 * mem[_5167 + mem[_5167]]) + 1
                                mem[_5167 + ceil32(return_data.size)] = _5197
                                require _5182 + (32 * _5197) + 32 <= return_data.size
                                mem[_5167 + ceil32(return_data.size) + 32 len 32 * _5197] = mem[_5167 + _5182 + 32 len 32 * _5197]
                                if _5197 < 1:
                                    revert with 0, 17
                                if _5197 - 1 >= _5197:
                                    revert with 0, 50
                                if mem[(32 * _5197 - 1) + _5167 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _5197 - 1) + _5167 + ceil32(return_data.size) + 32]:
                                    revert with 0, 17
                                if block.timestamp > -601:
                                    revert with 0, 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                                mem[mem[64] + 36] = mem[(32 * _5197 - 1) + _5167 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                mem[mem[64] + 68] = 160
                                _6443 = mem[_4061]
                                mem[mem[64] + 164] = mem[_4061]
                                idx = 0
                                s = _4061 + 32
                                t = mem[64] + 196
                                while idx < _6443:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp + 600
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, ext_call.return_data[0]), mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _6443) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7458 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7472 = mem[_7458]
                                require mem[_7458] <= test266151307()
                                require _7458 + return_data.size > _7458 + mem[_7458] + 31
                                _7493 = mem[_7458 + mem[_7458]]
                                if mem[_7458 + mem[_7458]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_7458 + mem[_7458]]) + 1 < 0 or _7458 + ceil32(return_data.size) + ceil32(32 * mem[_7458 + mem[_7458]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _7458 + ceil32(return_data.size) + ceil32(32 * mem[_7458 + mem[_7458]]) + 1
                                mem[_7458 + ceil32(return_data.size)] = _7493
                                require _7472 + (32 * _7493) + 32 <= return_data.size
                                mem[_7458 + ceil32(return_data.size) + 32 len 32 * _7493] = mem[_7458 + _7472 + 32 len 32 * _7493]
                                if _7493 < 1:
                                    revert with 0, 17
                                if _7493 - 1 >= _7493:
                                    revert with 0, 50
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenAAddress)
                                staticcall tokenAAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8535 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8546 = mem[_8535]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenBAddress)
                                staticcall tokenBAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8590 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8609 = mem[_8590]
                                if _8546 <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_12accf93Address)
                                    staticcall sub_12accf93Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8692 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(masterchefAddress)
                                    if not sub_4fe30970:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_8692]
                                    else:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_8692], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                else:
                                    if mem[_8590] <= 0:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_12accf93Address)
                                        staticcall sub_12accf93Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8701 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require ext_code.size(masterchefAddress)
                                        if not sub_4fe30970:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_8701]
                                        else:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_8701], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                    else:
                                        if block.timestamp > -601:
                                            revert with 0, 17
                                        mem[mem[64] + 68] = _8546
                                        mem[mem[64] + 100] = _8609
                                        mem[mem[64] + 132] = 0
                                        mem[mem[64] + 164] = 0
                                        mem[mem[64] + 196] = this.address
                                        mem[mem[64] + 228] = block.timestamp + 600
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                             gas gas_remaining wei
                                            args tokenAAddress, tokenBAddress, _8546, _8609, 0, 0, address(this.address), block.timestamp + 600
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_12accf93Address)
                                        staticcall sub_12accf93Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8844 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require ext_code.size(masterchefAddress)
                                        if not sub_4fe30970:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_8844]
                                        else:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_8844], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                            else:
                                mem[_4061 + 64] = address(sub_058fb7ce.field_256)
                                idx = _4061 + 64
                                s = 1
                                while _4061 + (32 * sub_058fb7ce.length) > idx:
                                    mem[idx + 32] = sub_058fb7ce[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = sub_058fb7ce.length
                                idx = 0
                                s = _4061 + 32
                                t = mem[64] + 100
                                while idx < sub_058fb7ce.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, ext_call.return_data[0]), Array(len=sub_058fb7ce.length, data=mem[mem[64] + 100 len 32 * sub_058fb7ce.length])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7463 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7483 = mem[_7463]
                                require mem[_7463] <= test266151307()
                                require _7463 + return_data.size > _7463 + mem[_7463] + 31
                                _7498 = mem[_7463 + mem[_7463]]
                                if mem[_7463 + mem[_7463]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_7463 + mem[_7463]]) + 1 < 0 or _7463 + ceil32(return_data.size) + ceil32(32 * mem[_7463 + mem[_7463]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _7463 + ceil32(return_data.size) + ceil32(32 * mem[_7463 + mem[_7463]]) + 1
                                mem[_7463 + ceil32(return_data.size)] = _7498
                                require _7483 + (32 * _7498) + 32 <= return_data.size
                                mem[_7463 + ceil32(return_data.size) + 32 len 32 * _7498] = mem[_7463 + _7483 + 32 len 32 * _7498]
                                if _7498 < 1:
                                    revert with 0, 17
                                if _7498 - 1 >= _7498:
                                    revert with 0, 50
                                if mem[(32 * _7498 - 1) + _7463 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _7498 - 1) + _7463 + ceil32(return_data.size) + 32]:
                                    revert with 0, 17
                                if block.timestamp > -601:
                                    revert with 0, 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                                mem[mem[64] + 36] = mem[(32 * _7498 - 1) + _7463 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                mem[mem[64] + 68] = 160
                                _8589 = mem[_4061]
                                mem[mem[64] + 164] = mem[_4061]
                                idx = 0
                                s = _4061 + 32
                                t = mem[64] + 196
                                while idx < _8589:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp + 600
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, ext_call.return_data[0]), mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _8589) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9449 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _9458 = mem[_9449]
                                require mem[_9449] <= test266151307()
                                require _9449 + return_data.size > _9449 + mem[_9449] + 31
                                _9469 = mem[_9449 + mem[_9449]]
                                if mem[_9449 + mem[_9449]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_9449 + mem[_9449]]) + 1 < 0 or _9449 + ceil32(return_data.size) + ceil32(32 * mem[_9449 + mem[_9449]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _9449 + ceil32(return_data.size) + ceil32(32 * mem[_9449 + mem[_9449]]) + 1
                                mem[_9449 + ceil32(return_data.size)] = _9469
                                require _9458 + (32 * _9469) + 32 <= return_data.size
                                mem[_9449 + ceil32(return_data.size) + 32 len 32 * _9469] = mem[_9449 + _9458 + 32 len 32 * _9469]
                                if _9469 < 1:
                                    revert with 0, 17
                                if _9469 - 1 >= _9469:
                                    revert with 0, 50
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenAAddress)
                                staticcall tokenAAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10003 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10011 = mem[_10003]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenBAddress)
                                staticcall tokenBAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10036 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10046 = mem[_10036]
                                if _10011 <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_12accf93Address)
                                    staticcall sub_12accf93Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10100 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(masterchefAddress)
                                    if not sub_4fe30970:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_10100]
                                    else:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_10100], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                else:
                                    if mem[_10036] <= 0:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_12accf93Address)
                                        staticcall sub_12accf93Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10113 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require ext_code.size(masterchefAddress)
                                        if not sub_4fe30970:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_10113]
                                        else:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_10113], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                    else:
                                        if block.timestamp > -601:
                                            revert with 0, 17
                                        mem[mem[64] + 68] = _10011
                                        mem[mem[64] + 100] = _10046
                                        mem[mem[64] + 132] = 0
                                        mem[mem[64] + 164] = 0
                                        mem[mem[64] + 196] = this.address
                                        mem[mem[64] + 228] = block.timestamp + 600
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                             gas gas_remaining wei
                                            args tokenAAddress, tokenBAddress, _10011, _10046, 0, 0, address(this.address), block.timestamp + 600
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_12accf93Address)
                                        staticcall sub_12accf93Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10236 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require ext_code.size(masterchefAddress)
                                        if not sub_4fe30970:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_10236]
                                        else:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_10236], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                    else:
                        mem[0] = 12
                        mem[(2 * ceil32(return_data.size)) + 128] = address(sub_f889c1c7.field_0)
                        idx = (2 * ceil32(return_data.size)) + 128
                        s = 0
                        while (2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 96 > idx:
                            mem[idx + 32] = sub_f889c1c7[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 132] = ext_call.return_data[0] / 2
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 164] = 64
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 196] = sub_f889c1c7.length
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = (2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 228
                        while idx < sub_f889c1c7.length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 132 len (96 * sub_f889c1c7.length) + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128
                        require return_data.size >= 32
                        _2768 = mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                        require mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + return_data.size + 128 > (2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 159
                        _2787 = mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]
                        if mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 1 < 0 or (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 129 > test266151307():
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 129
                        mem[(4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 128] = _2787
                        require _2768 + (32 * _2787) + 32 <= return_data.size
                        mem[(4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160 len 32 * _2787] = mem[(2 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + _2768 + 160 len 32 * _2787]
                        if _2787 < 1:
                            revert with 0, 17
                        if _2787 - 1 >= _2787:
                            revert with 0, 50
                        if mem[(32 * _2787 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160] and slippageFactor > -1 / mem[(32 * _2787 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160]:
                            revert with 0, 17
                        if block.timestamp > -601:
                            revert with 0, 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] / 2
                        mem[mem[64] + 36] = mem[(32 * _2787 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160] * slippageFactor / 1000
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = sub_f889c1c7.length
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < sub_f889c1c7.length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 600
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, ext_call.return_data[0]), mem[(32 * _2787 - 1) + (4 * ceil32(return_data.size)) + (32 * sub_f889c1c7.length) + 160] * slippageFactor / 1000, Array(len=sub_f889c1c7.length, data=mem[mem[64] + 196 len 32 * sub_f889c1c7.length]), address(this.address), block.timestamp + 600
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5161 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5173 = mem[_5161]
                        require mem[_5161] <= test266151307()
                        require _5161 + return_data.size > _5161 + mem[_5161] + 31
                        _5189 = mem[_5161 + mem[_5161]]
                        if mem[_5161 + mem[_5161]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_5161 + mem[_5161]]) + 1 < 0 or _5161 + ceil32(return_data.size) + ceil32(32 * mem[_5161 + mem[_5161]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _5161 + ceil32(return_data.size) + ceil32(32 * mem[_5161 + mem[_5161]]) + 1
                        mem[_5161 + ceil32(return_data.size)] = _5189
                        require _5173 + (32 * _5189) + 32 <= return_data.size
                        mem[_5161 + ceil32(return_data.size) + 32 len 32 * _5189] = mem[_5161 + _5173 + 32 len 32 * _5189]
                        if _5189 < 1:
                            revert with 0, 17
                        if _5189 - 1 >= _5189:
                            revert with 0, 50
                        _6376 = mem[64]
                        mem[64] = mem[64] + (32 * sub_058fb7ce.length) + 32
                        mem[_6376] = sub_058fb7ce.length
                        if not sub_058fb7ce.length:
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] / 2
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = sub_058fb7ce.length
                            idx = 0
                            s = _6376 + 32
                            t = mem[64] + 100
                            while idx < sub_058fb7ce.length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, ext_call.return_data[0]), Array(len=sub_058fb7ce.length, data=mem[mem[64] + 100 len 32 * sub_058fb7ce.length])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7464 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7484 = mem[_7464]
                            require mem[_7464] <= test266151307()
                            require _7464 + return_data.size > _7464 + mem[_7464] + 31
                            _7499 = mem[_7464 + mem[_7464]]
                            if mem[_7464 + mem[_7464]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_7464 + mem[_7464]]) + 1 < 0 or _7464 + ceil32(return_data.size) + ceil32(32 * mem[_7464 + mem[_7464]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _7464 + ceil32(return_data.size) + ceil32(32 * mem[_7464 + mem[_7464]]) + 1
                            mem[_7464 + ceil32(return_data.size)] = _7499
                            require _7484 + (32 * _7499) + 32 <= return_data.size
                            mem[_7464 + ceil32(return_data.size) + 32 len 32 * _7499] = mem[_7464 + _7484 + 32 len 32 * _7499]
                            if _7499 < 1:
                                revert with 0, 17
                            if _7499 - 1 >= _7499:
                                revert with 0, 50
                            if mem[(32 * _7499 - 1) + _7464 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _7499 - 1) + _7464 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if block.timestamp > -601:
                                revert with 0, 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] / 2
                            mem[mem[64] + 36] = mem[(32 * _7499 - 1) + _7464 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                            mem[mem[64] + 68] = 160
                            _8591 = mem[_6376]
                            mem[mem[64] + 164] = mem[_6376]
                            idx = 0
                            s = _6376 + 32
                            t = mem[64] + 196
                            while idx < _8591:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, ext_call.return_data[0]), mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _8591) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9450 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _9459 = mem[_9450]
                            require mem[_9450] <= test266151307()
                            require _9450 + return_data.size > _9450 + mem[_9450] + 31
                            _9470 = mem[_9450 + mem[_9450]]
                            if mem[_9450 + mem[_9450]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_9450 + mem[_9450]]) + 1 < 0 or _9450 + ceil32(return_data.size) + ceil32(32 * mem[_9450 + mem[_9450]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _9450 + ceil32(return_data.size) + ceil32(32 * mem[_9450 + mem[_9450]]) + 1
                            mem[_9450 + ceil32(return_data.size)] = _9470
                            require _9459 + (32 * _9470) + 32 <= return_data.size
                            mem[_9450 + ceil32(return_data.size) + 32 len 32 * _9470] = mem[_9450 + _9459 + 32 len 32 * _9470]
                            if _9470 < 1:
                                revert with 0, 17
                            if _9470 - 1 >= _9470:
                                revert with 0, 50
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAAddress)
                            staticcall tokenAAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10004 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10012 = mem[_10004]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenBAddress)
                            staticcall tokenBAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10037 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10047 = mem[_10037]
                            if _10012 <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(sub_12accf93Address)
                                staticcall sub_12accf93Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10103 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require ext_code.size(masterchefAddress)
                                if not sub_4fe30970:
                                    call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args sub_beefa4c9, mem[_10103]
                                else:
                                    call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args sub_beefa4c9, mem[_10103], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                            else:
                                if mem[_10037] <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_12accf93Address)
                                    staticcall sub_12accf93Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10114 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(masterchefAddress)
                                    if not sub_4fe30970:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_10114]
                                    else:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_10114], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                else:
                                    if block.timestamp > -601:
                                        revert with 0, 17
                                    mem[mem[64] + 68] = _10012
                                    mem[mem[64] + 100] = _10047
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 196] = this.address
                                    mem[mem[64] + 228] = block.timestamp + 600
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args tokenAAddress, tokenBAddress, _10012, _10047, 0, 0, address(this.address), block.timestamp + 600
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_12accf93Address)
                                    staticcall sub_12accf93Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10237 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(masterchefAddress)
                                    if not sub_4fe30970:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_10237]
                                    else:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_10237], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                        else:
                            mem[0] = 13
                            mem[_6376 + 32] = address(sub_058fb7ce.field_0)
                            if (32 * sub_058fb7ce.length) + 32 <= 64:
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = sub_058fb7ce.length
                                idx = 0
                                s = _6376 + 32
                                t = mem[64] + 100
                                while idx < sub_058fb7ce.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, ext_call.return_data[0]), Array(len=sub_058fb7ce.length, data=mem[mem[64] + 100 len 32 * sub_058fb7ce.length])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7465 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7485 = mem[_7465]
                                require mem[_7465] <= test266151307()
                                require _7465 + return_data.size > _7465 + mem[_7465] + 31
                                _7500 = mem[_7465 + mem[_7465]]
                                if mem[_7465 + mem[_7465]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_7465 + mem[_7465]]) + 1 < 0 or _7465 + ceil32(return_data.size) + ceil32(32 * mem[_7465 + mem[_7465]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _7465 + ceil32(return_data.size) + ceil32(32 * mem[_7465 + mem[_7465]]) + 1
                                mem[_7465 + ceil32(return_data.size)] = _7500
                                require _7485 + (32 * _7500) + 32 <= return_data.size
                                mem[_7465 + ceil32(return_data.size) + 32 len 32 * _7500] = mem[_7465 + _7485 + 32 len 32 * _7500]
                                if _7500 < 1:
                                    revert with 0, 17
                                if _7500 - 1 >= _7500:
                                    revert with 0, 50
                                if mem[(32 * _7500 - 1) + _7465 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _7500 - 1) + _7465 + ceil32(return_data.size) + 32]:
                                    revert with 0, 17
                                if block.timestamp > -601:
                                    revert with 0, 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                                mem[mem[64] + 36] = mem[(32 * _7500 - 1) + _7465 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                mem[mem[64] + 68] = 160
                                _8592 = mem[_6376]
                                mem[mem[64] + 164] = mem[_6376]
                                idx = 0
                                s = _6376 + 32
                                t = mem[64] + 196
                                while idx < _8592:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp + 600
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, ext_call.return_data[0]), mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _8592) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9451 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _9460 = mem[_9451]
                                require mem[_9451] <= test266151307()
                                require _9451 + return_data.size > _9451 + mem[_9451] + 31
                                _9471 = mem[_9451 + mem[_9451]]
                                if mem[_9451 + mem[_9451]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_9451 + mem[_9451]]) + 1 < 0 or _9451 + ceil32(return_data.size) + ceil32(32 * mem[_9451 + mem[_9451]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _9451 + ceil32(return_data.size) + ceil32(32 * mem[_9451 + mem[_9451]]) + 1
                                mem[_9451 + ceil32(return_data.size)] = _9471
                                require _9460 + (32 * _9471) + 32 <= return_data.size
                                mem[_9451 + ceil32(return_data.size) + 32 len 32 * _9471] = mem[_9451 + _9460 + 32 len 32 * _9471]
                                if _9471 < 1:
                                    revert with 0, 17
                                if _9471 - 1 >= _9471:
                                    revert with 0, 50
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenAAddress)
                                staticcall tokenAAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10005 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10013 = mem[_10005]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenBAddress)
                                staticcall tokenBAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10039 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10049 = mem[_10039]
                                if _10013 <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_12accf93Address)
                                    staticcall sub_12accf93Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10106 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(masterchefAddress)
                                    if not sub_4fe30970:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_10106]
                                    else:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_10106], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                else:
                                    if mem[_10039] <= 0:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_12accf93Address)
                                        staticcall sub_12accf93Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10115 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require ext_code.size(masterchefAddress)
                                        if not sub_4fe30970:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_10115]
                                        else:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_10115], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                    else:
                                        if block.timestamp > -601:
                                            revert with 0, 17
                                        mem[mem[64] + 68] = _10013
                                        mem[mem[64] + 100] = _10049
                                        mem[mem[64] + 132] = 0
                                        mem[mem[64] + 164] = 0
                                        mem[mem[64] + 196] = this.address
                                        mem[mem[64] + 228] = block.timestamp + 600
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                             gas gas_remaining wei
                                            args tokenAAddress, tokenBAddress, _10013, _10049, 0, 0, address(this.address), block.timestamp + 600
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_12accf93Address)
                                        staticcall sub_12accf93Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10238 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require ext_code.size(masterchefAddress)
                                        if not sub_4fe30970:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_10238]
                                        else:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_10238], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                            else:
                                mem[_6376 + 64] = address(sub_058fb7ce.field_256)
                                idx = _6376 + 64
                                s = 1
                                while _6376 + (32 * sub_058fb7ce.length) > idx:
                                    mem[idx + 32] = sub_058fb7ce[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = sub_058fb7ce.length
                                idx = 0
                                s = _6376 + 32
                                t = mem[64] + 100
                                while idx < sub_058fb7ce.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, ext_call.return_data[0]), Array(len=sub_058fb7ce.length, data=mem[mem[64] + 100 len 32 * sub_058fb7ce.length])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9453 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _9464 = mem[_9453]
                                require mem[_9453] <= test266151307()
                                require _9453 + return_data.size > _9453 + mem[_9453] + 31
                                _9473 = mem[_9453 + mem[_9453]]
                                if mem[_9453 + mem[_9453]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_9453 + mem[_9453]]) + 1 < 0 or _9453 + ceil32(return_data.size) + ceil32(32 * mem[_9453 + mem[_9453]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _9453 + ceil32(return_data.size) + ceil32(32 * mem[_9453 + mem[_9453]]) + 1
                                mem[_9453 + ceil32(return_data.size)] = _9473
                                require _9464 + (32 * _9473) + 32 <= return_data.size
                                mem[_9453 + ceil32(return_data.size) + 32 len 32 * _9473] = mem[_9453 + _9464 + 32 len 32 * _9473]
                                if _9473 < 1:
                                    revert with 0, 17
                                if _9473 - 1 >= _9473:
                                    revert with 0, 50
                                if mem[(32 * _9473 - 1) + _9453 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _9473 - 1) + _9453 + ceil32(return_data.size) + 32]:
                                    revert with 0, 17
                                if block.timestamp > -601:
                                    revert with 0, 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                                mem[mem[64] + 36] = mem[(32 * _9473 - 1) + _9453 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                mem[mem[64] + 68] = 160
                                _10038 = mem[_6376]
                                mem[mem[64] + 164] = mem[_6376]
                                idx = 0
                                s = _6376 + 32
                                t = mem[64] + 196
                                while idx < _10038:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp + 600
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, ext_call.return_data[0]), mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _10038) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10399 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10401 = mem[_10399]
                                require mem[_10399] <= test266151307()
                                require _10399 + return_data.size > _10399 + mem[_10399] + 31
                                _10403 = mem[_10399 + mem[_10399]]
                                if mem[_10399 + mem[_10399]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_10399 + mem[_10399]]) + 1 < 0 or _10399 + ceil32(return_data.size) + ceil32(32 * mem[_10399 + mem[_10399]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _10399 + ceil32(return_data.size) + ceil32(32 * mem[_10399 + mem[_10399]]) + 1
                                mem[_10399 + ceil32(return_data.size)] = _10403
                                require _10401 + (32 * _10403) + 32 <= return_data.size
                                mem[_10399 + ceil32(return_data.size) + 32 len 32 * _10403] = mem[_10399 + _10401 + 32 len 32 * _10403]
                                if _10403 < 1:
                                    revert with 0, 17
                                if _10403 - 1 >= _10403:
                                    revert with 0, 50
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenAAddress)
                                staticcall tokenAAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10503 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10505 = mem[_10503]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenBAddress)
                                staticcall tokenBAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10511 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10513 = mem[_10511]
                                if _10505 <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_12accf93Address)
                                    staticcall sub_12accf93Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10525 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require ext_code.size(masterchefAddress)
                                    if not sub_4fe30970:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_10525]
                                    else:
                                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args sub_beefa4c9, mem[_10525], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                else:
                                    if mem[_10511] <= 0:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_12accf93Address)
                                        staticcall sub_12accf93Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10529 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require ext_code.size(masterchefAddress)
                                        if not sub_4fe30970:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_10529]
                                        else:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_10529], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                                    else:
                                        if block.timestamp > -601:
                                            revert with 0, 17
                                        mem[mem[64] + 68] = _10505
                                        mem[mem[64] + 100] = _10513
                                        mem[mem[64] + 132] = 0
                                        mem[mem[64] + 164] = 0
                                        mem[mem[64] + 196] = this.address
                                        mem[mem[64] + 228] = block.timestamp + 600
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                             gas gas_remaining wei
                                            args tokenAAddress, tokenBAddress, _10505, _10513, 0, 0, address(this.address), block.timestamp + 600
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(sub_12accf93Address)
                                        staticcall sub_12accf93Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10563 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require ext_code.size(masterchefAddress)
                                        if not sub_4fe30970:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_10563]
                                        else:
                                            call masterchefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args sub_beefa4c9, mem[_10563], 0xeac685b543b2e851251c91f21b74350ffdcca0e6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}



}
