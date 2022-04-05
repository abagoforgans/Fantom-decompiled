contract main {




// =====================  Runtime code  =====================


#
#  - initialize()
#
const staked = ext_call.return_data[0]

const lp = 0x936d23c83c2469f6a14b9f5beaec13879598a5ac

const masterChef = 0x9083ea3756bde6ee6f27a6e996806fbd37f6f093

const sub_d4c62b7a(?) = 0x5cc61a78f164885776aa610fb0fe1257df78e59b

const pending = ext_call.return_data[0]

const wftm = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83

const router = 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52

const PID = 1


array of struct sub_af16f0fb;
address owner;

function owner() payable {
    return owner
}

function sub_af16f0fb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_af16f0fb.length
    return sub_af16f0fb[arg1].field_0
}

function _fallback() payable {
    revert
}

function setNewOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Owner required'
    owner = arg1
}

function sub_2f5c1244(?) payable {
    if owner != msg.sender:
        revert with 0, 'Owner required'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer of FTM failed'
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Owner required'
    require ext_code.size(0x9083ea3756bde6ee6f27a6e996806fbd37f6f093)
    call 0x9083ea3756bde6ee6f27a6e996806fbd37f6f093.withdraw(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 1, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1da8ecc0(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Owner required'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Owner required'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(0x936d23c83c2469f6a14b9f5beaec13879598a5ac):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call 0x936d23c83c2469f6a14b9f5beaec13879598a5ac with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    require ext_code.size(0x9083ea3756bde6ee6f27a6e996806fbd37f6f093)
    call 0x9083ea3756bde6ee6f27a6e996806fbd37f6f093.deposit(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 1, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function depositAll() payable {
    if owner != msg.sender:
        revert with 0, 'Owner required'
    require ext_code.size(0x936d23c83c2469f6a14b9f5beaec13879598a5ac)
    staticcall 0x936d23c83c2469f6a14b9f5beaec13879598a5ac.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x936d23c83c2469f6a14b9f5beaec13879598a5ac)
    staticcall 0x936d23c83c2469f6a14b9f5beaec13879598a5ac.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(0x936d23c83c2469f6a14b9f5beaec13879598a5ac):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0 len 28]
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call 0x936d23c83c2469f6a14b9f5beaec13879598a5ac with:
         gas gas_remaining wei
        args Mask(736, -512, ext_call.return_data[0 len 28]) << 512, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0]
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    require ext_code.size(0x9083ea3756bde6ee6f27a6e996806fbd37f6f093)
    call 0x9083ea3756bde6ee6f27a6e996806fbd37f6f093.deposit(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 1, 2 * ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function harvest() payable {
    if owner != msg.sender:
        revert with 0, 'Owner required'
    require ext_code.size(0x9083ea3756bde6ee6f27a6e996806fbd37f6f093)
    staticcall 0x9083ea3756bde6ee6f27a6e996806fbd37f6f093.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args 1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        revert with 0, 'Owner required'
    require ext_code.size(0x9083ea3756bde6ee6f27a6e996806fbd37f6f093)
    call 0x9083ea3756bde6ee6f27a6e996806fbd37f6f093.withdraw(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x5cc61a78f164885776aa610fb0fe1257df78e59b)
    staticcall 0x5cc61a78f164885776aa610fb0fe1257df78e59b.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[100] = 0
        mem[132] = 0
        mem[196] = this.address
        mem[228] = block.timestamp + 1800
        mem[164] = 160
        mem[260] = sub_af16f0fb.length
        if not sub_af16f0fb.length:
            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
            call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, 0, 0, 160, address(this.address), block.timestamp + 1800, sub_af16f0fb.length
        else:
            mem[0] = 1
            mem[292] = address(sub_af16f0fb.field_0)
            idx = 292
            s = 0
            while (32 * sub_af16f0fb.length) + 292 > idx + 32:
                mem[idx + 32] = sub_af16f0fb[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
            call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, 0, 0, 160, address(this.address), block.timestamp + 1800, sub_af16f0fb.length, mem[292 len 32 * sub_af16f0fb.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require mem[96 len 4], 0 <= 4294967296
        require mem[96 len 4], 0 + 32 <= return_data.size
        require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
        call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
             gas gas_remaining wei
            args 0x5cc61a78f164885776aa610fb0fe1257df78e59b, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, 0, ext_call.return_data[0], 0, 0, this.address, block.timestamp + 1800
    else:
        if 50 * ext_call.return_data[0] / ext_call.return_data[0] != 50:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[100] = 50 * ext_call.return_data[0] / 100
        mem[132] = 0
        mem[196] = this.address
        mem[228] = block.timestamp + 1800
        mem[164] = 160
        mem[260] = sub_af16f0fb.length
        if not sub_af16f0fb.length:
            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
            call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, uint32(50 * ext_call.return_data[0] / 100), 0, 160, address(this.address), block.timestamp + 1800, sub_af16f0fb.length
        else:
            mem[0] = 1
            mem[292] = address(sub_af16f0fb.field_0)
            idx = 292
            s = 0
            while (32 * sub_af16f0fb.length) + 292 > idx + 32:
                mem[idx + 32] = sub_af16f0fb[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
            call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, uint32(50 * ext_call.return_data[0] / 100), 0, 160, address(this.address), block.timestamp + 1800, sub_af16f0fb.length, mem[292 len 32 * sub_af16f0fb.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require mem[96 len 4], Mask(224, 32, 50 * ext_call.return_data[0] / 100) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, 50 * ext_call.return_data[0] / 100) >> 32 + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 32, 50 * ext_call.return_data[0] / 100) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, 50 * ext_call.return_data[0] / 100) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, 50 * ext_call.return_data[0] / 100) >> 32 + 96]) + 32 <= return_data.size
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
        call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
             gas gas_remaining wei
            args 0x5cc61a78f164885776aa610fb0fe1257df78e59b, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, 50 * ext_call.return_data[0] / 100, ext_call.return_data[0], 0, 0, this.address, block.timestamp + 1800
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(0x936d23c83c2469f6a14b9f5beaec13879598a5ac)
    staticcall 0x936d23c83c2469f6a14b9f5beaec13879598a5ac.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x9083ea3756bde6ee6f27a6e996806fbd37f6f093)
    call 0x9083ea3756bde6ee6f27a6e996806fbd37f6f093.deposit(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawAll() payable {
    if owner != msg.sender:
        revert with 0, 'Owner required'
    require ext_code.size(0x9083ea3756bde6ee6f27a6e996806fbd37f6f093)
    staticcall 0x9083ea3756bde6ee6f27a6e996806fbd37f6f093.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args 1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        revert with 0, 'Owner required'
    require ext_code.size(0x9083ea3756bde6ee6f27a6e996806fbd37f6f093)
    call 0x9083ea3756bde6ee6f27a6e996806fbd37f6f093.withdraw(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x936d23c83c2469f6a14b9f5beaec13879598a5ac)
    staticcall 0x936d23c83c2469f6a14b9f5beaec13879598a5ac.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x5cc61a78f164885776aa610fb0fe1257df78e59b)
    staticcall 0x5cc61a78f164885776aa610fb0fe1257df78e59b.0x70a08231 with:
            gas gas_remaining wei
           args this.address
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
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(0x936d23c83c2469f6a14b9f5beaec13879598a5ac):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call 0x936d23c83c2469f6a14b9f5beaec13879598a5ac with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if not ext_code.size(0x5cc61a78f164885776aa610fb0fe1257df78e59b):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
        call 0x5cc61a78f164885776aa610fb0fe1257df78e59b with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args ext_call.return_data[0], 0, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[694 len 26]
            if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                revert with 0, 'Address: call to non-contract'
            mem[588 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[524 len 28], mem[652 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[698 len 22]
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
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 695 len 26]
            if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 589 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[ceil32(return_data.size) + 525 len 28], mem[ceil32(return_data.size) + 653 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 531 len 26]
        if not ext_code.size(0x5cc61a78f164885776aa610fb0fe1257df78e59b):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
        call 0x5cc61a78f164885776aa610fb0fe1257df78e59b with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args ext_call.return_data[0], 0, mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 695 len 26]
            if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 589 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[ceil32(return_data.size) + 525 len 28], mem[ceil32(return_data.size) + 653 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        else:
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(2 * ceil32(return_data.size)) + 696 len 26]
            if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 590 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 526 len 28], mem[(2 * ceil32(return_data.size)) + 654 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
}

function reApprove() payable {
    require ext_code.size(0x5cc61a78f164885776aa610fb0fe1257df78e59b)
    staticcall 0x5cc61a78f164885776aa610fb0fe1257df78e59b.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                    mem[218 len 10]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(0x5cc61a78f164885776aa610fb0fe1257df78e59b):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[324 len 0] = 0
    call 0x5cc61a78f164885776aa610fb0fe1257df78e59b.0xdc33ae52 with:
         gas gas_remaining wei
        args Mask(480, -256, approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, -1
        if not approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[382 len 10]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdc33ae52 with:
             gas gas_remaining wei
            args -1, 0, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, -1
            if not approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            require ext_code.size(0x936d23c83c2469f6a14b9f5beaec13879598a5ac)
            staticcall 0x936d23c83c2469f6a14b9f5beaec13879598a5ac.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, 0x9083ea3756bde6ee6f27a6e996806fbd37f6f093
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[546 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[694 len 26]
            if not ext_code.size(0x936d23c83c2469f6a14b9f5beaec13879598a5ac):
                revert with 0, 'Address: call to non-contract'
            mem[588 len 64] = 0, 0x9083ea3756bde6ee6f27a6e996806fbd37f6f093, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call 0x936d23c83c2469f6a14b9f5beaec13879598a5ac.0x37f6f093 with:
                 gas gas_remaining wei
                args -1, mem[524 len 28], mem[652 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, -1
                if not approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[698 len 22]
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
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
            require ext_code.size(0x936d23c83c2469f6a14b9f5beaec13879598a5ac)
            staticcall 0x936d23c83c2469f6a14b9f5beaec13879598a5ac.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, 0x9083ea3756bde6ee6f27a6e996806fbd37f6f093
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 547 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 695 len 26]
            if not ext_code.size(0x936d23c83c2469f6a14b9f5beaec13879598a5ac):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 589 len 64] = 0, 0x9083ea3756bde6ee6f27a6e996806fbd37f6f093, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call 0x936d23c83c2469f6a14b9f5beaec13879598a5ac.0x37f6f093 with:
                 gas gas_remaining wei
                args -1, mem[ceil32(return_data.size) + 525 len 28], mem[ceil32(return_data.size) + 653 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, -1
                if not approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 383 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 531 len 26]
            if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdc33ae52 with:
                 gas gas_remaining wei
                args -1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, -1
                if not approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                require ext_code.size(0x936d23c83c2469f6a14b9f5beaec13879598a5ac)
                staticcall 0x936d23c83c2469f6a14b9f5beaec13879598a5ac.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, 0x9083ea3756bde6ee6f27a6e996806fbd37f6f093
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 547 len 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 695 len 26]
                if not ext_code.size(0x936d23c83c2469f6a14b9f5beaec13879598a5ac):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 589 len 64] = approve(address rg1, uint256 rg2), 0x9083ea3756bde6ee6f27a6e9, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[ceil32(return_data.size) + 653 len 0] = 0
                call 0x936d23c83c2469f6a14b9f5beaec13879598a5ac.0x37f6f093 with:
                     gas gas_remaining wei
                    args Mask(480, -256, approve(address rg1, uint256 rg2), 0x9083ea3756bde6ee6f27a6e9, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, -1
                    if not approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    require ext_code.size(0x936d23c83c2469f6a14b9f5beaec13879598a5ac)
                    staticcall 0x936d23c83c2469f6a14b9f5beaec13879598a5ac.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, 0x9083ea3756bde6ee6f27a6e996806fbd37f6f093
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[(2 * ceil32(return_data.size)) + 548 len 10]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(2 * ceil32(return_data.size)) + 696 len 26]
                    if not ext_code.size(0x936d23c83c2469f6a14b9f5beaec13879598a5ac):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 590 len 64] = approve(address rg1, uint256 rg2), 0x9083ea3756bde6ee6f27a6e9, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    call 0x936d23c83c2469f6a14b9f5beaec13879598a5ac.0x37f6f093 with:
                         gas gas_remaining wei
                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[(2 * ceil32(return_data.size)) + 654 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, -1
                        if not approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 701 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
                    require ext_code.size(0x936d23c83c2469f6a14b9f5beaec13879598a5ac)
                    staticcall 0x936d23c83c2469f6a14b9f5beaec13879598a5ac.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, 0x9083ea3756bde6ee6f27a6e996806fbd37f6f093
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[(2 * ceil32(return_data.size)) + 548 len 10]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(2 * ceil32(return_data.size)) + 696 len 26]
                    if not ext_code.size(0x936d23c83c2469f6a14b9f5beaec13879598a5ac):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 590 len 64] = approve(address rg1, uint256 rg2), 0x9083ea3756bde6ee6f27a6e9, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[(2 * ceil32(return_data.size)) + 654 len 0] = 0
                    call 0x936d23c83c2469f6a14b9f5beaec13879598a5ac.0x37f6f093 with:
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address rg1, uint256 rg2), 0x9083ea3756bde6ee6f27a6e9, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(2 * ceil32(return_data.size)) + 654 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, -1
                        if not approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
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
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 701 len 22]
        else:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 383 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 531 len 26]
            if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[ceil32(return_data.size) + 517 len 4] = 0
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdc33ae52 with:
                 gas gas_remaining wei
                args -1, 0, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, -1
                if not approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                require ext_code.size(0x936d23c83c2469f6a14b9f5beaec13879598a5ac)
                staticcall 0x936d23c83c2469f6a14b9f5beaec13879598a5ac.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, 0x9083ea3756bde6ee6f27a6e996806fbd37f6f093
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 547 len 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 695 len 26]
                if not ext_code.size(0x936d23c83c2469f6a14b9f5beaec13879598a5ac):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 589 len 64] = 0, 0x9083ea3756bde6ee6f27a6e996806fbd37f6f093, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call 0x936d23c83c2469f6a14b9f5beaec13879598a5ac.0x37f6f093 with:
                     gas gas_remaining wei
                    args -1, mem[ceil32(return_data.size) + 525 len 28], mem[ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, -1
                    if not approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(0x936d23c83c2469f6a14b9f5beaec13879598a5ac)
                staticcall 0x936d23c83c2469f6a14b9f5beaec13879598a5ac.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, 0x9083ea3756bde6ee6f27a6e996806fbd37f6f093, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[(2 * ceil32(return_data.size)) + 548 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(2 * ceil32(return_data.size)) + 696 len 26]
                if not ext_code.size(0x936d23c83c2469f6a14b9f5beaec13879598a5ac):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 590 len 64] = 0, 0x9083ea3756bde6ee6f27a6e996806fbd37f6f093, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call 0x936d23c83c2469f6a14b9f5beaec13879598a5ac.0x37f6f093 with:
                     gas gas_remaining wei
                    args -1, mem[(2 * ceil32(return_data.size)) + 526 len 28], mem[(2 * ceil32(return_data.size)) + 654 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, -1
                    if not approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
}



}
