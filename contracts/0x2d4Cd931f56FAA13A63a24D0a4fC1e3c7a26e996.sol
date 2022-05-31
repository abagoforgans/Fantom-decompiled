contract main {




// =====================  Runtime code  =====================


const getName = 'GinSpiritVoterProxy'

const sub_2d2e3a93(?) = 0xd533a949740bb3306d119cc777fa900ba034cd52

const sub_8ee69042(?) = 0x2fbff41a9efaeae77538bd63f1ea489494acdc08


address mintrAddress;
address owner;
uint32 stor2;
address operatorAddress;
uint256 stor2;
address depositorAddress;
mapping of uint8 stor4;
mapping of uint8 stor5;

function operator() payable {
    return address(operatorAddress)
}

function owner() payable {
    return owner
}

function depositor() payable {
    return depositorAddress
}

function mintr() payable {
    return mintrAddress
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!auth'
    owner = arg1
}

function setDepositor(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!auth'
    depositorAddress = arg1
}

function setMinterAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(operatorAddress) != msg.sender:
        revert with 0, '!operator'
    mintrAddress = arg1
}

function setStashAccess(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if address(operatorAddress) != msg.sender:
        revert with 0, '!auth'
    if arg1:
        stor4[address(arg1)] = uint8(arg2)
    return 1
}

function claimRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(operatorAddress) != msg.sender:
        revert with 0, '!auth'
    require ext_code.size(arg1)
    call arg1.claim_rewards() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function release() payable {
    if depositorAddress != msg.sender:
        revert with 0, '!auth'
    require ext_code.size(0x2fbff41a9efaeae77538bd63f1ea489494acdc08)
    call 0x2fbff41a9efaeae77538bd63f1ea489494acdc08.withdraw() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function balanceOfPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function vote(uint256 arg1, address arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    if address(operatorAddress) != msg.sender:
        revert with 0, '!auth'
    require ext_code.size(arg2)
    call arg2.vote(uint256 arg1, bool arg2, bool arg3) with:
         gas gas_remaining wei
        args arg1, arg3, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function increaseTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if depositorAddress != msg.sender:
        revert with 0, '!auth'
    require ext_code.size(0x2fbff41a9efaeae77538bd63f1ea489494acdc08)
    call 0x2fbff41a9efaeae77538bd63f1ea489494acdc08.increase_unlock_time(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!auth'
    if address(operatorAddress):
        require ext_code.size(address(operatorAddress))
        staticcall address(operatorAddress).isShutdown() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if bool(ext_call.return_data[0]) != 1:
            revert with 0, 'needs shutdown'
    address(operatorAddress) = arg1
}

function execute(address arg1, uint256 arg2, bytes arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if address(operatorAddress) != msg.sender:
        revert with 0, '!auth'
    mem[96 len arg3.length] = arg3[all]
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
        args arg3[all]
    if return_data.size:
        return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[96] = bool(ext_call.success)
    mem[128] = 64
    mem[160] = bool(ext_call.success)
    mem[192 len ceil32(bool(ext_call.success))] = mem[128 len ceil32(bool(ext_call.success))]
    if not bool(ext_call.success) % 32:
        return memory
          from 96
           len bool(ext_call.success) + 96
    mem[floor32(bool(ext_call.success)) + 192] = Mask(-(8 * -(bool(ext_call.success) % 32) + 32) + 256, 0, mem[floor32(bool(ext_call.success)) + 192])
    return memory
      from 96
       len floor32(bool(ext_call.success)) + 128
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor4[msg.sender]) != 1:
        revert with 0, '!auth'
    if 1 == bool(stor5[address(arg1)]):
        return 0
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
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    return ext_call.return_data[0]
}

function claimFees(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if address(operatorAddress) != msg.sender:
        revert with 0, '!auth'
    require ext_code.size(arg1)
    call arg1.claim() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg2):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call arg2 with:
       funct uint32(stor2)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    return ext_call.return_data[0]
}

function sub_2a861f5a(?) payable {
    require calldata.size - 4 >= 32
    if address(operatorAddress) != msg.sender:
        revert with 0, '!auth'
    require ext_code.size(mintrAddress)
    call mintrAddress.mint(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        return 0
    require ext_code.size(0xd533a949740bb3306d119cc777fa900ba034cd52)
    staticcall 0xd533a949740bb3306d119cc777fa900ba034cd52.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(0xd533a949740bb3306d119cc777fa900ba034cd52):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call 0xd533a949740bb3306d119cc777fa900ba034cd52 with:
       funct uint32(stor2)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    return ext_call.return_data[0]
}

function withdraw(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if address(operatorAddress) != msg.sender:
        revert with 0, '!auth'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg3:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg3) >> 32
        mem[324 len 0] = 0
    else:
        if ext_call.return_data[0] > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(arg2)
        call arg2.0x2e1a7d4d with:
             gas gas_remaining wei
            args (arg3 - ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg3 < arg3 - ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg3) >> 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg3
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    return 1
}

function withdrawAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if address(operatorAddress) != msg.sender:
        revert with 0, '!auth'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if address(operatorAddress) != msg.sender:
        revert with 0, '!auth'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 2 * ext_call.return_data[0]:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 31, ext_call.return_data[0]) >> 31
    else:
        if ext_call.return_data[0] > 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(arg2)
        call arg2.0x2e1a7d4d with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 0 < -ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 31, ext_call.return_data[0]) >> 31
        mem[324 len 0] = 0
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, 2 * ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    return 1
}

function increaseAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if depositorAddress != msg.sender:
        revert with 0, '!auth'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(0xd533a949740bb3306d119cc777fa900ba034cd52):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), 0x2fbff41a9efaeae77538bd63, 0, 0
    call 0xd533a949740bb3306d119cc777fa900ba034cd52.0x94acdc08 with:
         gas gas_remaining wei
        args 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), 0x2fbff41a9efaeae77538bd63, 0, 0
        if not approve(address arg1, uint256 arg2), 0x2fbff41a9efaeae77538bd63:
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if arg1:
            require ext_code.size(0xd533a949740bb3306d119cc777fa900ba034cd52)
            staticcall 0xd533a949740bb3306d119cc777fa900ba034cd52.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, 0x2fbff41a9efaeae77538bd63f1ea489494acdc08
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
        if not ext_code.size(0xd533a949740bb3306d119cc777fa900ba034cd52):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address arg1, uint256 arg2), 0x2fbff41a9efaeae77538bd63, 0, Mask(224, 32, arg1) >> 32
        mem[488 len 0] = 0
        call 0xd533a949740bb3306d119cc777fa900ba034cd52.0x94acdc08 with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), 0x2fbff41a9efaeae77538bd63, 0, 0
            if not approve(address arg1, uint256 arg2), 0x2fbff41a9efaeae77538bd63:
                revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
        require ext_code.size(0x2fbff41a9efaeae77538bd63f1ea489494acdc08)
        call 0x2fbff41a9efaeae77538bd63f1ea489494acdc08.increase_amount(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return 1
    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if not return_data.size:
        if arg1:
            require ext_code.size(0xd533a949740bb3306d119cc777fa900ba034cd52)
            staticcall 0xd533a949740bb3306d119cc777fa900ba034cd52.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, 0x2fbff41a9efaeae77538bd63f1ea489494acdc08
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
        if not ext_code.size(0xd533a949740bb3306d119cc777fa900ba034cd52):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), 0x2fbff41a9efaeae77538bd63, 0, Mask(224, 32, arg1) >> 32
        mem[ceil32(return_data.size) + 489 len 0] = 0
        call 0xd533a949740bb3306d119cc777fa900ba034cd52.0x94acdc08 with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), 0x2fbff41a9efaeae77538bd63, 0, 0
            if not approve(address arg1, uint256 arg2), 0x2fbff41a9efaeae77538bd63:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
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
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len 22]
        require ext_code.size(0x2fbff41a9efaeae77538bd63f1ea489494acdc08)
        call 0x2fbff41a9efaeae77538bd63f1ea489494acdc08.increase_amount(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return 1
    require return_data.size >= 32
    if not mem[292]:
        revert with 0, 
                    32,
                    42,
                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                    mem[ceil32(return_data.size) + 371 len 22]
    if arg1:
        require ext_code.size(0xd533a949740bb3306d119cc777fa900ba034cd52)
        staticcall 0xd533a949740bb3306d119cc777fa900ba034cd52.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, 0x2fbff41a9efaeae77538bd63f1ea489494acdc08
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
    if not ext_code.size(0xd533a949740bb3306d119cc777fa900ba034cd52):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), 0x2fbff41a9efaeae77538bd63, 0, Mask(224, 32, arg1) >> 32
    mem[ceil32(return_data.size) + 517 len 4] = 0
    call 0xd533a949740bb3306d119cc777fa900ba034cd52.0x94acdc08 with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 489 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), 0x2fbff41a9efaeae77538bd63, 0, 0
        if not approve(address arg1, uint256 arg2), 0x2fbff41a9efaeae77538bd63:
            revert with 0, 
                        32,
                        42,
                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 535 len 22]
        require ext_code.size(0x2fbff41a9efaeae77538bd63f1ea489494acdc08)
        call 0x2fbff41a9efaeae77538bd63f1ea489494acdc08.increase_amount(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return 1
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
                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    require ext_code.size(0x2fbff41a9efaeae77538bd63f1ea489494acdc08)
    call 0x2fbff41a9efaeae77538bd63f1ea489494acdc08.increase_amount(uint256 arg1) with:
         gas gas_remaining wei
        args arg1, mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1, mem[(2 * ceil32(return_data.size)) + 458 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}

function createLock(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if depositorAddress != msg.sender:
        revert with 0, '!auth'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(0xd533a949740bb3306d119cc777fa900ba034cd52):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), 0x2fbff41a9efaeae77538bd63, 0, 0
    call 0xd533a949740bb3306d119cc777fa900ba034cd52.0x94acdc08 with:
         gas gas_remaining wei
        args 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), 0x2fbff41a9efaeae77538bd63, 0, 0
        if not approve(address arg1, uint256 arg2), 0x2fbff41a9efaeae77538bd63:
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if arg1:
            require ext_code.size(0xd533a949740bb3306d119cc777fa900ba034cd52)
            staticcall 0xd533a949740bb3306d119cc777fa900ba034cd52.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, 0x2fbff41a9efaeae77538bd63f1ea489494acdc08
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
        if not ext_code.size(0xd533a949740bb3306d119cc777fa900ba034cd52):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address arg1, uint256 arg2), 0x2fbff41a9efaeae77538bd63, 0, Mask(224, 32, arg1) >> 32
        mem[488 len 0] = 0
        call 0xd533a949740bb3306d119cc777fa900ba034cd52.0x94acdc08 with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), 0x2fbff41a9efaeae77538bd63, 0, 0
            if not approve(address arg1, uint256 arg2), 0x2fbff41a9efaeae77538bd63:
                revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
        require ext_code.size(0x2fbff41a9efaeae77538bd63f1ea489494acdc08)
        call 0x2fbff41a9efaeae77538bd63f1ea489494acdc08.create_lock(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg1, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return 1
    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if not return_data.size:
        if arg1:
            require ext_code.size(0xd533a949740bb3306d119cc777fa900ba034cd52)
            staticcall 0xd533a949740bb3306d119cc777fa900ba034cd52.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, 0x2fbff41a9efaeae77538bd63f1ea489494acdc08
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
        if not ext_code.size(0xd533a949740bb3306d119cc777fa900ba034cd52):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), 0x2fbff41a9efaeae77538bd63, 0, Mask(224, 32, arg1) >> 32
        mem[ceil32(return_data.size) + 489 len 0] = 0
        call 0xd533a949740bb3306d119cc777fa900ba034cd52.0x94acdc08 with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), 0x2fbff41a9efaeae77538bd63, 0, 0
            if not approve(address arg1, uint256 arg2), 0x2fbff41a9efaeae77538bd63:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
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
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len 22]
        require ext_code.size(0x2fbff41a9efaeae77538bd63f1ea489494acdc08)
        call 0x2fbff41a9efaeae77538bd63f1ea489494acdc08.create_lock(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg1, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return 1
    require return_data.size >= 32
    if not mem[292]:
        revert with 0, 
                    32,
                    42,
                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                    mem[ceil32(return_data.size) + 371 len 22]
    if arg1:
        require ext_code.size(0xd533a949740bb3306d119cc777fa900ba034cd52)
        staticcall 0xd533a949740bb3306d119cc777fa900ba034cd52.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, 0x2fbff41a9efaeae77538bd63f1ea489494acdc08
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
    if not ext_code.size(0xd533a949740bb3306d119cc777fa900ba034cd52):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), 0x2fbff41a9efaeae77538bd63, 0, Mask(224, 32, arg1) >> 32
    mem[ceil32(return_data.size) + 517 len 4] = 0
    call 0xd533a949740bb3306d119cc777fa900ba034cd52.0x94acdc08 with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 489 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), 0x2fbff41a9efaeae77538bd63, 0, 0
        if not approve(address arg1, uint256 arg2), 0x2fbff41a9efaeae77538bd63:
            revert with 0, 
                        32,
                        42,
                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 535 len 22]
        require ext_code.size(0x2fbff41a9efaeae77538bd63f1ea489494acdc08)
        call 0x2fbff41a9efaeae77538bd63f1ea489494acdc08.create_lock(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg1, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return 1
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
                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    require ext_code.size(0x2fbff41a9efaeae77538bd63f1ea489494acdc08)
    call 0x2fbff41a9efaeae77538bd63f1ea489494acdc08.create_lock(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, arg2, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1, mem[(2 * ceil32(return_data.size)) + 458 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}

function deposit(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if address(operatorAddress) != msg.sender:
        revert with 0, '!auth'
    if stor5[address(arg1)]:
        if stor5[address(arg2)]:
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0
                mem[324 len 0] = 0
                call arg1 with:
                     gas gas_remaining wei
                    args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0
                    if not approve(address arg1, uint256 arg2), address(arg2) << 64:
                        revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    if ext_call.return_data[0]:
                        require ext_code.size(arg1)
                        staticcall arg1.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, arg2
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
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[424 len 64] = 0, address(arg2), ext_call.return_data[0 len 28]
                    call arg1 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[360 len 28], mem[488 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0
                        if not approve(address arg1, uint256 arg2), address(arg2) << 64:
                            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        if not ext_call.return_data[0]:
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 531 len 26]
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 425 len 64] = 0, address(arg2), ext_call.return_data[0 len 28]
                            call arg1 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0
                                if not approve(address arg1, uint256 arg2), address(arg2) << 64:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
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
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        else:
                            require ext_code.size(arg1)
                            staticcall arg1.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, arg2
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
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 425 len 64] = 0, address(arg2), ext_call.return_data[0 len 28]
                            call arg1 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0
                                if not approve(address arg1, uint256 arg2), address(arg2) << 64:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
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
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
                    else:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                        if ext_call.return_data[0]:
                            require ext_code.size(arg1)
                            staticcall arg1.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, arg2
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
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 425 len 64] = 0, address(arg2), ext_call.return_data[0 len 28]
                        call arg1 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0
                            if not approve(address arg1, uint256 arg2), address(arg2) << 64:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
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
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(arg2)
                call arg2.0xb6b55f25 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            stor5[address(arg2)] = 1
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0
                mem[324 len 0] = 0
                call arg1 with:
                     gas gas_remaining wei
                    args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0
                    if not approve(address arg1, uint256 arg2), address(arg2) << 64:
                        revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    if ext_call.return_data[0]:
                        require ext_code.size(arg1)
                        staticcall arg1.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, arg2
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
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[424 len 64] = 0, address(arg2), ext_call.return_data[0 len 28]
                    call arg1 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[360 len 28], mem[488 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0
                        if not approve(address arg1, uint256 arg2), address(arg2) << 64:
                            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
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
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                    if ext_call.return_data[0]:
                        require ext_code.size(arg1)
                        staticcall arg1.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, arg2
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
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 425 len 64] = 0, address(arg2), ext_call.return_data[0 len 28]
                    call arg1 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0
                        if not approve(address arg1, uint256 arg2), address(arg2) << 64:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
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
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(arg2)
                call arg2.0xb6b55f25 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        stor5[address(arg1)] = 1
        if not stor5[address(arg2)]:
            stor5[address(arg2)] = 1
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0
            mem[324 len 0] = 0
            call arg1 with:
                 gas gas_remaining wei
                args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0) << 256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0
                if not approve(address arg1, uint256 arg2), address(arg2) << 64:
                    revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                if ext_call.return_data[0]:
                    require ext_code.size(arg1)
                    staticcall arg1.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, arg2
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
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[424 len 64] = 0, address(arg2), ext_call.return_data[0 len 28]
                call arg1 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[360 len 28], mem[488 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0
                    if not approve(address arg1, uint256 arg2), address(arg2) << 64:
                        revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
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
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
                if ext_call.return_data[0]:
                    require ext_code.size(arg1)
                    staticcall arg1.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, arg2
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
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = 0, address(arg2), ext_call.return_data[0 len 28]
                call arg1 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0
                    if not approve(address arg1, uint256 arg2), address(arg2) << 64:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
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
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            require ext_code.size(arg2)
            call arg2.0xb6b55f25 with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
