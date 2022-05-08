contract main {




// =====================  Runtime code  =====================


#
#  - reApprove()
#  - initialize()
#
const staked = ext_call.return_data[0]

const lp = 0xea2e66c55b5118bb3e04c4c65c210a884404c7

const masterChef = 0x5979959483b4aafa6a94ba8da6aa406c31d06cb6

const pending = ext_call.return_data[0]

const sub_e5edd154(?) = 0xb1f9d66426e2e006baeb41d3d9b8fbc0d1f600

const wftm = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c

const router = 0xf491e7b69e4244ad4002bc14e878a34207e38c

const PID = 1


array of struct sub_c7b2c2d1;
uint32 stor2;
address owner;
uint256 stor2;

function owner() payable {
    return address(owner)
}

function sub_c7b2c2d1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_c7b2c2d1.length
    return sub_c7b2c2d1[arg1].field_0
}

function _fallback() payable {
    revert
}

function setNewOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Owner required'
    address(owner) = arg1
}

function sub_2f5c1244(?) payable {
    if address(owner) != msg.sender:
        revert with 0, 'Owner required'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer of FTM failed'
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Owner required'
    require ext_code.size(0x5979959483b4aafa6a94ba8da6aa406c31d06cb6)
    call 0x5979959483b4aafa6a94ba8da6aa406c31d06cb6.0x441a3e70 with:
         gas gas_remaining wei
        args 1, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1da8ecc0(?) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Owner required'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x8d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function depositAll() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Owner required'
    require ext_code.size(0xfe000000000000000000000000ea2e66c55b5118bb3e04c4c65c210a884404c7)
    staticcall 0xfe000000000000000000000000ea2e66c55b5118bb3e04c4c65c210a884404c7.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xfe000000000000000000000000ea2e66c55b5118bb3e04c4c65c210a884404c7)
    staticcall 0xfe000000000000000000000000ea2e66c55b5118bb3e04c4c65c210a884404c7.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x8d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(0xea2e66c55b5118bb3e04c4c65c210a884404c7):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), ext_call.return_data[0 len 28]
    mem[416 len 4] = 0
    call 0x00ea2e66c55b5118bb3e04c4c65c210a884404c7 with:
         gas gas_remaining wei
        args Mask(736, -512, ext_call.return_data[0 len 28]) << 512, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), ext_call.return_data[0]
        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    require ext_code.size(0x5979959483b4aafa6a94ba8da6aa406c31d06cb6)
    call 0x5979959483b4aafa6a94ba8da6aa406c31d06cb6.0xe2bbb158 with:
         gas gas_remaining wei
        args 1, 2 * ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a8d9c057(?) payable {
    if address(owner) != msg.sender:
        revert with 0, 'Owner required'
    require ext_code.size(0x5979959483b4aafa6a94ba8da6aa406c31d06cb6)
    staticcall 0x5979959483b4aafa6a94ba8da6aa406c31d06cb6.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args 1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x5979959483b4aafa6a94ba8da6aa406c31d06cb6)
    call 0x5979959483b4aafa6a94ba8da6aa406c31d06cb6.0x441a3e70 with:
         gas gas_remaining wei
        args 1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xfe000000000000000000000000ea2e66c55b5118bb3e04c4c65c210a884404c7)
    staticcall 0xfe000000000000000000000000ea2e66c55b5118bb3e04c4c65c210a884404c7.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x83000000000000000000000000f491e7b69e4244ad4002bc14e878a34207e38c)
    call ????????????????????????????????????????.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
         gas gas_remaining wei
        args 0, 3234985472, 0x6400000000000000000000000021be370d5312f44cb42ce377bc9b8a0cef1a4c, ext_call.return_data[0], 1, 1, this.address, block.timestamp + 1800
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0x75000000000000000000000000b1f9d66426e2e006baeb41d3d9b8fbc0d1f600)
    staticcall 0x75000000000000000000000000b1f9d66426e2e006baeb41d3d9b8fbc0d1f600.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_c7b2c2d1.length:
        require ext_code.size(0x83000000000000000000000000f491e7b69e4244ad4002bc14e878a34207e38c)
        call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[32], 0, 160, this.address, block.timestamp + 1800, sub_c7b2c2d1.length
    else:
        mem[292] = address(sub_c7b2c2d1.field_0)
        idx = 292
        s = 0
        while (32 * sub_c7b2c2d1.length) + 292 > idx + 32:
            mem[idx + 32] = sub_c7b2c2d1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(0x83000000000000000000000000f491e7b69e4244ad4002bc14e878a34207e38c)
        call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[32], 0, 160, this.address, block.timestamp + 1800, sub_c7b2c2d1.length, mem[292 len 32 * sub_c7b2c2d1.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x6400000000000000000000000021be370d5312f44cb42ce377bc9b8a0cef1a4c)
    staticcall 0x6400000000000000000000000021be370d5312f44cb42ce377bc9b8a0cef1a4c.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x8d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
    call 0x0021be370d5312f44cb42ce377bc9b8a0cef1a4c with:
       funct sub_c7b2c2d1.length.field_224
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
        if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor2):
            revert with 0, 32, 42, 0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_f4350fc8(?) payable {
    if address(owner) != msg.sender:
        revert with 0, 'Owner required'
    require ext_code.size(0x75000000000000000000000000b1f9d66426e2e006baeb41d3d9b8fbc0d1f600)
    staticcall 0x75000000000000000000000000b1f9d66426e2e006baeb41d3d9b8fbc0d1f600.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(owner)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x75000000000000000000000000b1f9d66426e2e006baeb41d3d9b8fbc0d1f600)
    call ????????????????????????????????????????.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(owner), this.address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x75000000000000000000000000b1f9d66426e2e006baeb41d3d9b8fbc0d1f600)
    staticcall 0x75000000000000000000000000b1f9d66426e2e006baeb41d3d9b8fbc0d1f600.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[100] = ext_call.return_data[0]
    mem[132] = 0
    mem[196] = this.address
    mem[228] = block.timestamp + 1800
    mem[164] = 160
    mem[260] = sub_c7b2c2d1.length
    if not sub_c7b2c2d1.length:
        require ext_code.size(0x83000000000000000000000000f491e7b69e4244ad4002bc14e878a34207e38c)
        call ????????????????????????????????????????.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp + 1800, sub_c7b2c2d1.length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _26 = mem[96 len 4], ext_call.return_data[0 len 28]
        require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
        _29 = mem[_26 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_26 + 96])] = mem[_26 + 128 len floor32(mem[_26 + 96])]
        require ext_code.size(0x6400000000000000000000000021be370d5312f44cb42ce377bc9b8a0cef1a4c)
        staticcall 0x6400000000000000000000000021be370d5312f44cb42ce377bc9b8a0cef1a4c.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _29) + ceil32(return_data.size) + 164] = address(owner)
        mem[(32 * _29) + ceil32(return_data.size) + 196] = ext_call.return_data[0]
        mem[(32 * _29) + ceil32(return_data.size) + 128] = 68
        mem[(32 * _29) + ceil32(return_data.size) + 164 len 28] = Mask(224, 0, stor2)
        mem[(32 * _29) + ceil32(return_data.size) + 160 len 4] = transfer(address arg1, uint256 arg2)
        mem[(32 * _29) + ceil32(return_data.size) + 228] = 32
        mem[(32 * _29) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x8d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * _29) + ceil32(return_data.size) + 398 len 26]
        if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _29) + ceil32(return_data.size) + 292 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
        mem[(32 * _29) + ceil32(return_data.size) + 384 len 4] = 0
        call 0x0021be370d5312f44cb42ce377bc9b8a0cef1a4c with:
           funct uint32(stor2)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _29) + ceil32(return_data.size) + 356 len 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96 len 4], ext_call.return_data[0 len 28]:
                    revert with memory
                      from 128
                       len mem[96 len 4], ext_call.return_data[0 len 28]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96 len 4], ext_call.return_data[0 len 28]:
                require mem[96 len 4], ext_call.return_data[0 len 28] >= 32
                if not ext_call.return_data[28 len 4], 0:
                    revert with 0, 
                                32,
                                42,
                                0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _29) + ceil32(return_data.size) + 402 len 22]
        else:
            mem[(32 * _29) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _29) + ceil32(return_data.size) + 324]:
                    revert with 0, 
                                32,
                                42,
                                0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _29) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
    else:
        mem[0] = 1
        mem[292] = address(sub_c7b2c2d1.field_0)
        idx = 292
        s = 0
        while (32 * sub_c7b2c2d1.length) + 292 > idx + 32:
            mem[idx + 32] = sub_c7b2c2d1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(0x83000000000000000000000000f491e7b69e4244ad4002bc14e878a34207e38c)
        call ????????????????????????????????????????.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp + 1800, sub_c7b2c2d1.length, mem[292 len 32 * sub_c7b2c2d1.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _139 = mem[96 len 4], ext_call.return_data[0 len 28]
        require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
        _152 = mem[_139 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_139 + 96])] = mem[_139 + 128 len floor32(mem[_139 + 96])]
        require ext_code.size(0x6400000000000000000000000021be370d5312f44cb42ce377bc9b8a0cef1a4c)
        staticcall 0x6400000000000000000000000021be370d5312f44cb42ce377bc9b8a0cef1a4c.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _152) + ceil32(return_data.size) + 164] = address(owner)
        mem[(32 * _152) + ceil32(return_data.size) + 196] = ext_call.return_data[0]
        mem[(32 * _152) + ceil32(return_data.size) + 128] = 68
        mem[(32 * _152) + ceil32(return_data.size) + 164 len 28] = Mask(224, 0, stor2)
        mem[(32 * _152) + ceil32(return_data.size) + 160 len 4] = transfer(address arg1, uint256 arg2)
        mem[(32 * _152) + ceil32(return_data.size) + 228] = 32
        mem[(32 * _152) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x8d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * _152) + ceil32(return_data.size) + 398 len 26]
        if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _152) + ceil32(return_data.size) + 292 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
        mem[(32 * _152) + ceil32(return_data.size) + 384 len 4] = 0
        call 0x0021be370d5312f44cb42ce377bc9b8a0cef1a4c with:
           funct uint32(stor2)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _152) + ceil32(return_data.size) + 356 len 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96 len 4], ext_call.return_data[0 len 28]:
                    revert with memory
                      from 128
                       len mem[96 len 4], ext_call.return_data[0 len 28]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96 len 4], ext_call.return_data[0 len 28]:
                require mem[96 len 4], ext_call.return_data[0 len 28] >= 32
                if not ext_call.return_data[28 len 4], 0:
                    revert with 0, 
                                32,
                                42,
                                0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _152) + ceil32(return_data.size) + 402 len 22]
        else:
            mem[(32 * _152) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _152) + ceil32(return_data.size) + 324]:
                    revert with 0, 
                                32,
                                42,
                                0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _152) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
}

function emergencyWithdrawAll() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Owner required'
    require ext_code.size(0x5979959483b4aafa6a94ba8da6aa406c31d06cb6)
    call 0x5979959483b4aafa6a94ba8da6aa406c31d06cb6.0x5312ea8e with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xfe000000000000000000000000ea2e66c55b5118bb3e04c4c65c210a884404c7)
    staticcall 0xfe000000000000000000000000ea2e66c55b5118bb3e04c4c65c210a884404c7.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x75000000000000000000000000b1f9d66426e2e006baeb41d3d9b8fbc0d1f600)
    staticcall 0x75000000000000000000000000b1f9d66426e2e006baeb41d3d9b8fbc0d1f600.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x6400000000000000000000000021be370d5312f44cb42ce377bc9b8a0cef1a4c)
    staticcall 0x6400000000000000000000000021be370d5312f44cb42ce377bc9b8a0cef1a4c.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x8d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(0xea2e66c55b5118bb3e04c4c65c210a884404c7):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
    call 0x00ea2e66c55b5118bb3e04c4c65c210a884404c7 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x8d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if not ext_code.size(0xb1f9d66426e2e006baeb41d3d9b8fbc0d1f600):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
        call 0x00b1f9d66426e2e006baeb41d3d9b8fbc0d1f600 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
            if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x8d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[694 len 26]
            if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c):
                revert with 0, 'Address: call to non-contract'
            mem[588 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
            mem[652 len 0] = 0
            call 0x0021be370d5312f44cb42ce377bc9b8a0cef1a4c with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[652 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
                if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[698 len 22]
            else:
                mem[620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[620]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x8d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 695 len 26]
                if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 589 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
                call 0x0021be370d5312f44cb42ce377bc9b8a0cef1a4c with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
                    if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
                else:
                    mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 621]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x8d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 695 len 26]
                if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 589 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
                mem[ceil32(return_data.size) + 653 len 0] = 0
                call 0x0021be370d5312f44cb42ce377bc9b8a0cef1a4c with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
                    if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
                else:
                    mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 621]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 700 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x8d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 531 len 26]
            if not ext_code.size(0xb1f9d66426e2e006baeb41d3d9b8fbc0d1f600):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
            mem[ceil32(return_data.size) + 489 len 0] = 0
            call 0x00b1f9d66426e2e006baeb41d3d9b8fbc0d1f600 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
                if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x8d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 695 len 26]
                if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 589 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                call 0x0021be370d5312f44cb42ce377bc9b8a0cef1a4c with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 525 len 28], mem[ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
                    if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
                else:
                    mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 621]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 700 len 22]
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x8d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(2 * ceil32(return_data.size)) + 696 len 26]
                if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 590 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                call 0x0021be370d5312f44cb42ce377bc9b8a0cef1a4c with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 526 len 28], mem[(2 * ceil32(return_data.size)) + 654 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
                    if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 622]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
        else:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x8d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 531 len 26]
            if not ext_code.size(0xb1f9d66426e2e006baeb41d3d9b8fbc0d1f600):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
            mem[ceil32(return_data.size) + 489 len 0] = 0
            call 0x00b1f9d66426e2e006baeb41d3d9b8fbc0d1f600 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
                if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x8d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 695 len 26]
                if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 589 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                call 0x0021be370d5312f44cb42ce377bc9b8a0cef1a4c with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 525 len 28], mem[ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
                    if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
                else:
                    mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 621]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x8d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(2 * ceil32(return_data.size)) + 696 len 26]
                if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 590 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                call 0x0021be370d5312f44cb42ce377bc9b8a0cef1a4c with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 526 len 28], mem[(2 * ceil32(return_data.size)) + 654 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
                    if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 622]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
}

function withdrawAll() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Owner required'
    require ext_code.size(0x5979959483b4aafa6a94ba8da6aa406c31d06cb6)
    staticcall 0x5979959483b4aafa6a94ba8da6aa406c31d06cb6.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args 1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Owner required'
    require ext_code.size(0x5979959483b4aafa6a94ba8da6aa406c31d06cb6)
    call 0x5979959483b4aafa6a94ba8da6aa406c31d06cb6.0x441a3e70 with:
         gas gas_remaining wei
        args 1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xfe000000000000000000000000ea2e66c55b5118bb3e04c4c65c210a884404c7)
    staticcall 0xfe000000000000000000000000ea2e66c55b5118bb3e04c4c65c210a884404c7.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x75000000000000000000000000b1f9d66426e2e006baeb41d3d9b8fbc0d1f600)
    staticcall 0x75000000000000000000000000b1f9d66426e2e006baeb41d3d9b8fbc0d1f600.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x6400000000000000000000000021be370d5312f44cb42ce377bc9b8a0cef1a4c)
    staticcall 0x6400000000000000000000000021be370d5312f44cb42ce377bc9b8a0cef1a4c.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x8d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(0xea2e66c55b5118bb3e04c4c65c210a884404c7):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
    call 0x00ea2e66c55b5118bb3e04c4c65c210a884404c7 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x8d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if not ext_code.size(0xb1f9d66426e2e006baeb41d3d9b8fbc0d1f600):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
        mem[488 len 0] = 0
        call 0x00b1f9d66426e2e006baeb41d3d9b8fbc0d1f600 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
            if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x8d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[694 len 26]
            if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c):
                revert with 0, 'Address: call to non-contract'
            mem[588 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
            call 0x0021be370d5312f44cb42ce377bc9b8a0cef1a4c with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[524 len 28], mem[652 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
                if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[698 len 22]
            else:
                mem[620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[620]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x8d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 695 len 26]
                if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 589 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                call 0x0021be370d5312f44cb42ce377bc9b8a0cef1a4c with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 525 len 28], mem[ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
                    if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
                else:
                    mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 621]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 700 len 22]
            else:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x8d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 695 len 26]
                if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 589 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                call 0x0021be370d5312f44cb42ce377bc9b8a0cef1a4c with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 525 len 28], mem[ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
                    if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
                else:
                    mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 621]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x8d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 531 len 26]
            if not ext_code.size(0xb1f9d66426e2e006baeb41d3d9b8fbc0d1f600):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
            mem[ceil32(return_data.size) + 489 len 0] = 0
            call 0x00b1f9d66426e2e006baeb41d3d9b8fbc0d1f600 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
                if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x8d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 695 len 26]
                if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 589 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                call 0x0021be370d5312f44cb42ce377bc9b8a0cef1a4c with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 525 len 28], mem[ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
                    if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
                else:
                    mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 621]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x8d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(2 * ceil32(return_data.size)) + 696 len 26]
                if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 590 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                call 0x0021be370d5312f44cb42ce377bc9b8a0cef1a4c with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 526 len 28], mem[(2 * ceil32(return_data.size)) + 654 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
                    if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 622]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
        else:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x8d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 531 len 26]
            if not ext_code.size(0xb1f9d66426e2e006baeb41d3d9b8fbc0d1f600):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
            mem[ceil32(return_data.size) + 489 len 0] = 0
            call 0x00b1f9d66426e2e006baeb41d3d9b8fbc0d1f600 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
                if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x8d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 695 len 26]
                if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 589 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                call 0x0021be370d5312f44cb42ce377bc9b8a0cef1a4c with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 525 len 28], mem[ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
                    if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
                else:
                    mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 621]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 700 len 22]
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x8d416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(2 * ceil32(return_data.size)) + 696 len 26]
                if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 590 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                call 0x0021be370d5312f44cb42ce377bc9b8a0cef1a4c with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 526 len 28], mem[(2 * ceil32(return_data.size)) + 654 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
                    if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 622]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x295361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
}



}
