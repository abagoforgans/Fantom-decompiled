contract main {




// =====================  Runtime code  =====================


const usdc = 0x4068da6c83afcfa0e13ba15a6696662335d5b75

const wftm = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83

const masterchef = 0x30b65159db82efcf8cede9861bc6b85336310eb2

const MAX_FEE = 600


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address keeperAddress;
address strategistAddress;
uint32 stor3;
address unirouterAddress;
uint256 stor3;
uint32 stor4;
address vaultAddress;
uint256 stor4;
address harvesterAddress;
uint256 STRATEGIST_FEE;
address inputAddress;
address outputAddress;
uint256 poolId;
array of struct sub_76c76f91;
uint8 sub_c9ec945a;
uint8 harvestOnDeposit; offset 8
uint256 stor11; offset 8
uint256 lastHarvest;

function inputToken() payable {
    return inputAddress
}

function strategist() payable {
    return strategistAddress
}

function unirouter() payable {
    return address(unirouterAddress)
}

function poolId() payable {
    return poolId
}

function harvester() payable {
    return harvesterAddress
}

function paused() payable {
    return bool(uint8(stor0.field_160))
}

function panicStatus() payable {
    return bool(sub_c9ec945a)
}

function sub_76c76f91(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_76c76f91.length
    return sub_76c76f91[arg1].field_0
}

function STRATEGIST_FEE() payable {
    return STRATEGIST_FEE
}

function harvestOnDeposit() payable {
    return bool(harvestOnDeposit)
}

function owner() payable {
    return owner
}

function keeper() payable {
    return keeperAddress
}

function sub_c9ec945a(?) payable {
    return bool(sub_c9ec945a)
}

function input() payable {
    return inputAddress
}

function lastHarvest() payable {
    return lastHarvest
}

function output() payable {
    return outputAddress
}

function vault() payable {
    return address(vaultAddress)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function balanceOfWant() payable {
    require ext_code.size(inputAddress)
    staticcall inputAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfPool() payable {
    require ext_code.size(0x30b65159db82efcf8cede9861bc6b85336310eb2)
    staticcall 0x30b65159db82efcf8cede9861bc6b85336310eb2.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x644d65736f205374726174204572726f723a20537472617465676973742063616e6e6f7420626520746865207a65726f20616464726573,
                    mem[219 len 9]
    strategistAddress = arg1
    emit StratSetStrategist(arg1);
}

function setHarvestOnDeposit(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        72,
                        0x2e4d65736f205374726174204572726f723a20556e617574686f72697a6564206163636573732e204f6e6c7920746865206d616e616765722063616e206163636573732074686973,
                        mem[236 len 24]
    stor11 = Mask(248, 0, arg1)
    emit StratHarvestOnDeposit(arg1);
}

function setStrategistFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        72,
                        0x2e4d65736f205374726174204572726f723a20556e617574686f72697a6564206163636573732e204f6e6c7920746865206d616e616765722063616e206163636573732074686973,
                        mem[236 len 24]
    if arg1 > 600:
        revert with 0, 'Must be less than MAX_FEE'
    STRATEGIST_FEE = arg1
    emit feeChange(msg.sender, arg1);
}

function balanceOf() payable {
    require ext_code.size(0x30b65159db82efcf8cede9861bc6b85336310eb2)
    staticcall 0x30b65159db82efcf8cede9861bc6b85336310eb2.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(inputAddress)
    staticcall inputAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x2e4d65736f205374726174204572726f723a205661756c742063616e6e6f7420626520746865207a65726f20616464726573,
                    mem[214 len 14]
    if address(vaultAddress):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x734d65736f205374726174204572726f723a205661756c7420616c726561647920696e697469616c697a65,
                    mem[207 len 21]
    address(vaultAddress) = arg1
    emit StratSetVault(arg1);
}

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        72,
                        0x2e4d65736f205374726174204572726f723a20556e617574686f72697a6564206163636573732e204f6e6c7920746865206d616e616765722063616e206163636573732074686973,
                        mem[236 len 24]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x2e4d65736f205374726174204572726f723a204b65657065722063616e6e6f74206265207a65726f20616464726573,
                    mem[211 len 17]
    keeperAddress = arg1
    emit StratSetKeeper(arg1);
}

function setHarvester(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        72,
                        0x2e4d65736f205374726174204572726f723a20556e617574686f72697a6564206163636573732e204f6e6c7920746865206d616e616765722063616e206163636573732074686973,
                        mem[236 len 24]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x734d65736f205374726174204572726f723a204861727665737465722063616e6e6f74206265207a65726f20616464726573,
                    mem[214 len 14]
    harvesterAddress = arg1
    emit StratSetHarvester(arg1);
}

function outputToUsdc() payable {
    if not sub_76c76f91.length:
        mem[(32 * sub_76c76f91.length) + 128] = 32
        mem[(32 * sub_76c76f91.length) + 160] = sub_76c76f91.length
        mem[(32 * sub_76c76f91.length) + 192 len floor32(sub_76c76f91.length)] = mem[128 len floor32(sub_76c76f91.length)]
        return memory
          from (32 * sub_76c76f91.length) + 128
           len (96 * sub_76c76f91.length) + 64
    mem[128] = address(sub_76c76f91.field_0)
    idx = 128
    s = 0
    while (32 * sub_76c76f91.length) + 96 > idx:
        mem[idx + 32] = sub_76c76f91[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_76c76f91.length) + 192 len floor32(sub_76c76f91.length)] = mem[128 len floor32(sub_76c76f91.length)]
    return Array(len=sub_76c76f91.length, data=mem[128 len floor32(sub_76c76f91.length)], mem[(32 * sub_76c76f91.length) + floor32(sub_76c76f91.length) + 192 len (32 * sub_76c76f91.length) - floor32(sub_76c76f91.length)]), 
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    if address(vaultAddress) != msg.sender:
        if this.address != msg.sender:
            if harvesterAddress != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            109,
                            0xfe4d65736f205374726174204572726f7220284465706f736974293a20556e617574686f72697a6564206163636573732e204f6e6c7920746865207661756c742c206861727665737465722c206f72207468697320636f6e74726163742063616e206163636573732074686973,
                            mem[273 len 19]
    require ext_code.size(inputAddress)
    staticcall inputAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > 0:
        if ext_call.return_data[0] > 0:
            require ext_code.size(0x30b65159db82efcf8cede9861bc6b85336310eb2)
            call 0x30b65159db82efcf8cede9861bc6b85336310eb2.deposit(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args poolId, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    81,
                    0x6c4d65736f205374726174204572726f7220285769746864726177293a20556e617574686f72697a6564204163636573732e204f6e6c7920746865207661756c742063616e206163636573732074686973,
                    mem[245 len 15]
    require ext_code.size(inputAddress)
    staticcall inputAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(0x30b65159db82efcf8cede9861bc6b85336310eb2)
        call 0x30b65159db82efcf8cede9861bc6b85336310eb2.withdraw(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args poolId, arg1 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(inputAddress)
        staticcall inputAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(inputAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    if ext_call.return_data[0] <= arg1:
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
        call inputAddress with:
           funct uint32(stor4)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
    else:
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
        call inputAddress with:
           funct uint32(stor4)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
}

function harvest() payable {
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    if harvesterAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    74,
                    0x734d65736f205374726174204572726f723a20556e617574686f72697a6564206163636573732e204f6e6c7920746865206861727665737465722063616e206163636573732074686973,
                    mem[238 len 22]
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    require ext_code.size(0x30b65159db82efcf8cede9861bc6b85336310eb2)
    call 0x30b65159db82efcf8cede9861bc6b85336310eb2.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args poolId, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(outputAddress)
    staticcall outputAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        if STRATEGIST_FEE <= 0:
            require ext_code.size(inputAddress)
            staticcall inputAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if uint8(stor0.field_160):
                revert with 0, 'Pausable: paused'
            if address(vaultAddress) != msg.sender:
                if this.address != msg.sender:
                    if harvesterAddress != msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    109,
                                    0xfe4d65736f205374726174204572726f7220284465706f736974293a20556e617574686f72697a6564206163636573732e204f6e6c7920746865207661756c742c206861727665737465722c206f72207468697320636f6e74726163742063616e206163636573732074686973,
                                    mem[273 len 19]
        else:
            require ext_code.size(outputAddress)
            staticcall outputAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not sub_76c76f91.length:
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, 0, 0, 160, strategistAddress, block.timestamp, sub_76c76f91.length
                else:
                    mem[292] = address(sub_76c76f91.field_0)
                    idx = 292
                    s = 0
                    while (32 * sub_76c76f91.length) + 292 > idx + 32:
                        mem[idx + 32] = sub_76c76f91[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, 0, 0, 160, strategistAddress, block.timestamp, sub_76c76f91.length, mem[292 len 32 * sub_76c76f91.length]
            else:
                require ext_call.return_data[0]
                if ext_call.return_data[0] * STRATEGIST_FEE / ext_call.return_data[0] != STRATEGIST_FEE:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not sub_76c76f91.length:
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, uint32(ext_call.return_data[0] * STRATEGIST_FEE / 10000), 0, 160, strategistAddress, block.timestamp, sub_76c76f91.length
                else:
                    mem[292] = address(sub_76c76f91.field_0)
                    idx = 292
                    s = 0
                    while (32 * sub_76c76f91.length) + 292 > idx + 32:
                        mem[idx + 32] = sub_76c76f91[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, uint32(ext_call.return_data[0] * STRATEGIST_FEE / 10000), 0, 160, strategistAddress, block.timestamp, sub_76c76f91.length, mem[292 len 32 * sub_76c76f91.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(inputAddress)
            staticcall inputAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if uint8(stor0.field_160):
                revert with 0, 'Pausable: paused'
            if address(vaultAddress) != msg.sender:
                if this.address != msg.sender:
                    if harvesterAddress != msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    109,
                                    0xfe4d65736f205374726174204572726f7220284465706f736974293a20556e617574686f72697a6564206163636573732e204f6e6c7920746865207661756c742c206861727665737465722c206f72207468697320636f6e74726163742063616e206163636573732074686973,
                                    Mask(152, 0, sub_76c76f91.length)
        require ext_code.size(inputAddress)
        staticcall inputAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            if ext_call.return_data[0] > 0:
                require ext_code.size(0x30b65159db82efcf8cede9861bc6b85336310eb2)
                call 0x30b65159db82efcf8cede9861bc6b85336310eb2.deposit(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args poolId, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    lastHarvest = block.timestamp
    emit StratHarvest(msg.sender);
}

function managerHarvest() payable {
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        72,
                        0x2e4d65736f205374726174204572726f723a20556e617574686f72697a6564206163636573732e204f6e6c7920746865206d616e616765722063616e206163636573732074686973,
                        mem[236 len 24]
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    require ext_code.size(0x30b65159db82efcf8cede9861bc6b85336310eb2)
    call 0x30b65159db82efcf8cede9861bc6b85336310eb2.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args poolId, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(outputAddress)
    staticcall outputAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        if STRATEGIST_FEE <= 0:
            require ext_code.size(inputAddress)
            staticcall inputAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if uint8(stor0.field_160):
                revert with 0, 'Pausable: paused'
            if address(vaultAddress) != msg.sender:
                if this.address != msg.sender:
                    if harvesterAddress != msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    109,
                                    0xfe4d65736f205374726174204572726f7220284465706f736974293a20556e617574686f72697a6564206163636573732e204f6e6c7920746865207661756c742c206861727665737465722c206f72207468697320636f6e74726163742063616e206163636573732074686973,
                                    mem[273 len 19]
        else:
            require ext_code.size(outputAddress)
            staticcall outputAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not sub_76c76f91.length:
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, 0, 0, 160, strategistAddress, block.timestamp, sub_76c76f91.length
                else:
                    mem[292] = address(sub_76c76f91.field_0)
                    idx = 292
                    s = 0
                    while (32 * sub_76c76f91.length) + 292 > idx + 32:
                        mem[idx + 32] = sub_76c76f91[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, 0, 0, 160, strategistAddress, block.timestamp, sub_76c76f91.length, mem[292 len 32 * sub_76c76f91.length]
            else:
                require ext_call.return_data[0]
                if ext_call.return_data[0] * STRATEGIST_FEE / ext_call.return_data[0] != STRATEGIST_FEE:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not sub_76c76f91.length:
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, uint32(ext_call.return_data[0] * STRATEGIST_FEE / 10000), 0, 160, strategistAddress, block.timestamp, sub_76c76f91.length
                else:
                    mem[292] = address(sub_76c76f91.field_0)
                    idx = 292
                    s = 0
                    while (32 * sub_76c76f91.length) + 292 > idx + 32:
                        mem[idx + 32] = sub_76c76f91[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, uint32(ext_call.return_data[0] * STRATEGIST_FEE / 10000), 0, 160, strategistAddress, block.timestamp, sub_76c76f91.length, mem[292 len 32 * sub_76c76f91.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(inputAddress)
            staticcall inputAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if uint8(stor0.field_160):
                revert with 0, 'Pausable: paused'
            if address(vaultAddress) != msg.sender:
                if this.address != msg.sender:
                    if harvesterAddress != msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    109,
                                    0xfe4d65736f205374726174204572726f7220284465706f736974293a20556e617574686f72697a6564206163636573732e204f6e6c7920746865207661756c742c206861727665737465722c206f72207468697320636f6e74726163742063616e206163636573732074686973,
                                    Mask(152, 0, sub_76c76f91.length)
        require ext_code.size(inputAddress)
        staticcall inputAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            if ext_call.return_data[0] > 0:
                require ext_code.size(0x30b65159db82efcf8cede9861bc6b85336310eb2)
                call 0x30b65159db82efcf8cede9861bc6b85336310eb2.deposit(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args poolId, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    lastHarvest = block.timestamp
    emit StratHarvest(msg.sender);
    emit StratHarvestFromMangager(msg.sender);
}

function beforeDeposit() payable {
    if harvestOnDeposit:
        if address(vaultAddress) != msg.sender:
            if this.address != msg.sender:
                if harvesterAddress != msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                116,
                                0x734d65736f205374726174204572726f7220284265666f7265204465706f736974293a20556e617574686f72697a6564206163636573732e204f6e6c7920746865207661756c742c206861727665737465722c206f72207468697320636f6e74726163742063616e206163636573732074686973,
                                mem[280 len 12]
        if uint8(stor0.field_160):
            revert with 0, 'Pausable: paused'
        require ext_code.size(0x30b65159db82efcf8cede9861bc6b85336310eb2)
        call 0x30b65159db82efcf8cede9861bc6b85336310eb2.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args poolId, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(outputAddress)
        staticcall outputAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            if STRATEGIST_FEE <= 0:
                require ext_code.size(inputAddress)
                staticcall inputAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint8(stor0.field_160):
                    revert with 0, 'Pausable: paused'
                if address(vaultAddress) != msg.sender:
                    if this.address != msg.sender:
                        if harvesterAddress != msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        109,
                                        0xfe4d65736f205374726174204572726f7220284465706f736974293a20556e617574686f72697a6564206163636573732e204f6e6c7920746865207661756c742c206861727665737465722c206f72207468697320636f6e74726163742063616e206163636573732074686973,
                                        mem[273 len 19]
            else:
                require ext_code.size(outputAddress)
                staticcall outputAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not sub_76c76f91.length:
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 0, 160, strategistAddress, block.timestamp, sub_76c76f91.length
                    else:
                        mem[292] = address(sub_76c76f91.field_0)
                        idx = 292
                        s = 0
                        while (32 * sub_76c76f91.length) + 292 > idx + 32:
                            mem[idx + 32] = sub_76c76f91[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 0, 160, strategistAddress, block.timestamp, sub_76c76f91.length, mem[292 len 32 * sub_76c76f91.length]
                else:
                    require ext_call.return_data[0]
                    if ext_call.return_data[0] * STRATEGIST_FEE / ext_call.return_data[0] != STRATEGIST_FEE:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not sub_76c76f91.length:
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, uint32(ext_call.return_data[0] * STRATEGIST_FEE / 10000), 0, 160, strategistAddress, block.timestamp, sub_76c76f91.length
                    else:
                        mem[292] = address(sub_76c76f91.field_0)
                        idx = 292
                        s = 0
                        while (32 * sub_76c76f91.length) + 292 > idx + 32:
                            mem[idx + 32] = sub_76c76f91[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, uint32(ext_call.return_data[0] * STRATEGIST_FEE / 10000), 0, 160, strategistAddress, block.timestamp, sub_76c76f91.length, mem[292 len 32 * sub_76c76f91.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(inputAddress)
                staticcall inputAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint8(stor0.field_160):
                    revert with 0, 'Pausable: paused'
                if address(vaultAddress) != msg.sender:
                    if this.address != msg.sender:
                        if harvesterAddress != msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        109,
                                        0xfe4d65736f205374726174204572726f7220284465706f736974293a20556e617574686f72697a6564206163636573732e204f6e6c7920746865207661756c742c206861727665737465722c206f72207468697320636f6e74726163742063616e206163636573732074686973,
                                        Mask(152, 0, sub_76c76f91.length)
            require ext_code.size(inputAddress)
            staticcall inputAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                if ext_call.return_data[0] > 0:
                    require ext_code.size(0x30b65159db82efcf8cede9861bc6b85336310eb2)
                    call 0x30b65159db82efcf8cede9861bc6b85336310eb2.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args poolId, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        lastHarvest = block.timestamp
        emit StratHarvest(msg.sender);
}

function pause() payable {
    if msg.sender == owner:
        if uint8(stor0.field_160):
            revert with 0, 'Pausable: paused'
        Mask(96, 0, stor0.field_160) = 1
        emit Paused(msg.sender);
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(inputAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
        mem[324 len 0] = 0
        call inputAddress.0x36310eb2 with:
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
            if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
            if ext_code.size(outputAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[424 len 64] = 0, address(unirouterAddress), 0
            call outputAddress with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args 0, mem[360 len 28], mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                    revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            else:
                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[456]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 531 len 26]
                if ext_code.size(outputAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = 0, address(unirouterAddress), 0
                call outputAddress with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                else:
                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 457]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 531 len 26]
                if ext_code.size(outputAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = 0, address(unirouterAddress), 0
                call outputAddress with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                else:
                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 457]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
    else:
        if keeperAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        72,
                        0x2e4d65736f205374726174204572726f723a20556e617574686f72697a6564206163636573732e204f6e6c7920746865206d616e616765722063616e206163636573732074686973,
                        mem[236 len 24]
        if uint8(stor0.field_160):
            revert with 0, 'Pausable: paused'
        Mask(96, 0, stor0.field_160) = 1
        emit Paused(msg.sender);
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(inputAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
        mem[324 len 0] = 0
        call inputAddress.0x36310eb2 with:
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
            if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
            if ext_code.size(outputAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[424 len 64] = 0, address(unirouterAddress), 0
            call outputAddress with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args 0, mem[360 len 28], mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                    revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            else:
                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[456]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 531 len 26]
            if ext_code.size(outputAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, address(unirouterAddress), 0
            call outputAddress with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
}

function panic() payable {
    if msg.sender == owner:
        if uint8(stor0.field_160):
            revert with 0, 'Pausable: paused'
        Mask(96, 0, stor0.field_160) = 1
        emit Paused(msg.sender);
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(inputAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
        call inputAddress.0x36310eb2 with:
             gas gas_remaining wei
            args 0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
            if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
            if ext_code.size(outputAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
            call outputAddress with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args 0, mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                    revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            else:
                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[456]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
            require ext_code.size(0x30b65159db82efcf8cede9861bc6b85336310eb2)
            call 0x30b65159db82efcf8cede9861bc6b85336310eb2.emergencyWithdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args poolId
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 531 len 26]
            if ext_code.size(outputAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
            mem[ceil32(return_data.size) + 517 len 4] = 0
            call outputAddress with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                require ext_code.size(0x30b65159db82efcf8cede9861bc6b85336310eb2)
                call 0x30b65159db82efcf8cede9861bc6b85336310eb2.emergencyWithdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args poolId
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(0x30b65159db82efcf8cede9861bc6b85336310eb2)
                call 0x30b65159db82efcf8cede9861bc6b85336310eb2.emergencyWithdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args poolId, mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        if keeperAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        72,
                        0x2e4d65736f205374726174204572726f723a20556e617574686f72697a6564206163636573732e204f6e6c7920746865206d616e616765722063616e206163636573732074686973,
                        mem[236 len 24]
        if msg.sender == owner:
            if uint8(stor0.field_160):
                revert with 0, 'Pausable: paused'
            Mask(96, 0, stor0.field_160) = 1
            emit Paused(msg.sender);
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if ext_code.size(inputAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
            call inputAddress.0x36310eb2 with:
                 gas gas_remaining wei
                args 0, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                    revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                if ext_code.size(outputAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
                call outputAddress with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, mem[488 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                        revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                else:
                    mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[456]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                require ext_code.size(0x30b65159db82efcf8cede9861bc6b85336310eb2)
                call 0x30b65159db82efcf8cede9861bc6b85336310eb2.emergencyWithdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args poolId
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 531 len 26]
                if ext_code.size(outputAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
                mem[ceil32(return_data.size) + 517 len 4] = 0
                call outputAddress with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                    require ext_code.size(0x30b65159db82efcf8cede9861bc6b85336310eb2)
                    call 0x30b65159db82efcf8cede9861bc6b85336310eb2.emergencyWithdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args poolId
                else:
                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 457]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(0x30b65159db82efcf8cede9861bc6b85336310eb2)
                    call 0x30b65159db82efcf8cede9861bc6b85336310eb2.emergencyWithdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args poolId, mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        else:
            if keeperAddress != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            72,
                            0x2e4d65736f205374726174204572726f723a20556e617574686f72697a6564206163636573732e204f6e6c7920746865206d616e616765722063616e206163636573732074686973,
                            mem[236 len 24]
            if uint8(stor0.field_160):
                revert with 0, 'Pausable: paused'
            Mask(96, 0, stor0.field_160) = 1
            emit Paused(msg.sender);
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if ext_code.size(inputAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
            call inputAddress.0x36310eb2 with:
                 gas gas_remaining wei
                args 0, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                    revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                if ext_code.size(outputAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
                call outputAddress with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, mem[488 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                        revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                else:
                    mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[456]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                require ext_code.size(0x30b65159db82efcf8cede9861bc6b85336310eb2)
                call 0x30b65159db82efcf8cede9861bc6b85336310eb2.emergencyWithdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args poolId
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size <= 0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 531 len 26]
                    if ext_code.size(outputAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
                    mem[ceil32(return_data.size) + 517 len 4] = 0
                    call outputAddress with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args 0, mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                        if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                        require ext_code.size(0x30b65159db82efcf8cede9861bc6b85336310eb2)
                        call 0x30b65159db82efcf8cede9861bc6b85336310eb2.emergencyWithdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args poolId
                    else:
                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        require ext_code.size(0x30b65159db82efcf8cede9861bc6b85336310eb2)
                        call 0x30b65159db82efcf8cede9861bc6b85336310eb2.emergencyWithdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args poolId, mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 531 len 26]
                    if ext_code.size(outputAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
                    mem[ceil32(return_data.size) + 489 len 0] = 0
                    call outputAddress with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0) << 256, mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0
                        if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                    else:
                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 536 len 22]
                    require ext_code.size(0x30b65159db82efcf8cede9861bc6b85336310eb2)
                    call 0x30b65159db82efcf8cede9861bc6b85336310eb2.emergencyWithdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args poolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_c9ec945a = 1
    emit StratPanic(msg.sender);
}

function unpause() payable {
    if msg.sender == owner:
        if sub_c9ec945a:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x774d65736f205374726174204572726f722028556e7061757365293a20537472617465677920697320696e2070616e6963206d6f6465,
                        mem[218 len 10]
        if not uint8(stor0.field_160):
            revert with 0, 'Pausable: not paused'
        Mask(96, 0, stor0.field_160) = 0
        emit Unpaused(msg.sender);
        require ext_code.size(inputAddress)
        staticcall inputAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), 0x30b65159db82efcf8cede9861bc6b85336310eb2
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
            revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(inputAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call inputAddress.0x36310eb2 with:
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, -1
            if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            require ext_code.size(outputAddress)
            staticcall outputAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(unirouterAddress)
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
                revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
            if ext_code.size(outputAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call outputAddress with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, -1
                if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                    revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                require ext_code.size(inputAddress)
                staticcall inputAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint8(stor0.field_160):
                    revert with 0, 'Pausable: paused'
                if address(vaultAddress) != msg.sender:
                    if this.address != msg.sender:
                        if harvesterAddress != msg.sender:
                            revert with 0, 
                                        32,
                                        109,
                                        0xfe4d65736f205374726174204572726f7220284465706f736974293a20556e617574686f72697a6564206163636573732e204f6e6c7920746865207661756c742c206861727665737465722c206f72207468697320636f6e74726163742063616e206163636573732074686973,
                                        mem[601 len 19]
            else:
                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[456]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                require ext_code.size(inputAddress)
                staticcall inputAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint8(stor0.field_160):
                    revert with 0, 'Pausable: paused'
                if address(vaultAddress) != msg.sender:
                    if this.address != msg.sender:
                        if harvesterAddress != msg.sender:
                            revert with 0, 
                                        32,
                                        109,
                                        0xfe4d65736f205374726174204572726f7220284465706f736974293a20556e617574686f72697a6564206163636573732e204f6e6c7920746865207661756c742c206861727665737465722c206f72207468697320636f6e74726163742063616e206163636573732074686973,
                                        mem[ceil32(return_data.size) + 602 len 19]
            require ext_code.size(inputAddress)
            staticcall inputAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                if ext_call.return_data[0] > 0:
                    require ext_code.size(0x30b65159db82efcf8cede9861bc6b85336310eb2)
                    call 0x30b65159db82efcf8cede9861bc6b85336310eb2.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args poolId, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
            require ext_code.size(outputAddress)
            staticcall outputAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(unirouterAddress)
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
                            0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 531 len 26]
            if ext_code.size(outputAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[ceil32(return_data.size) + 517 len 4] = 0
            call outputAddress with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, -1
                if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                require ext_code.size(inputAddress)
                staticcall inputAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint8(stor0.field_160):
                    revert with 0, 'Pausable: paused'
                if address(vaultAddress) != msg.sender:
                    if this.address != msg.sender:
                        if harvesterAddress != msg.sender:
                            revert with 0, 
                                        32,
                                        109,
                                        0xfe4d65736f205374726174204572726f7220284465706f736974293a20556e617574686f72697a6564206163636573732e204f6e6c7920746865207661756c742c206861727665737465722c206f72207468697320636f6e74726163742063616e206163636573732074686973,
                                        mem[ceil32(return_data.size) + 602 len 19]
                require ext_code.size(inputAddress)
                staticcall inputAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    if ext_call.return_data[0] > 0:
                        require ext_code.size(0x30b65159db82efcf8cede9861bc6b85336310eb2)
                        call 0x30b65159db82efcf8cede9861bc6b85336310eb2.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args poolId, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(inputAddress)
                staticcall inputAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address), mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint8(stor0.field_160):
                    revert with 0, 
                                'Pausable: paused',
                                mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if address(vaultAddress) != msg.sender:
                    if this.address != msg.sender:
                        if harvesterAddress != msg.sender:
                            revert with 0, 
                                        32,
                                        109,
                                        0xfe4d65736f205374726174204572726f7220284465706f736974293a20556e617574686f72697a6564206163636573732e204f6e6c7920746865207661756c742c206861727665737465722c206f72207468697320636f6e74726163742063616e206163636573732074686973,
                                        mem[(2 * ceil32(return_data.size)) + 603 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 19]
                require ext_code.size(inputAddress)
                staticcall inputAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address), mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    if ext_call.return_data[0] > 0:
                        require ext_code.size(0x30b65159db82efcf8cede9861bc6b85336310eb2)
                        call 0x30b65159db82efcf8cede9861bc6b85336310eb2.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args poolId, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
    else:
        if keeperAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        72,
                        0x2e4d65736f205374726174204572726f723a20556e617574686f72697a6564206163636573732e204f6e6c7920746865206d616e616765722063616e206163636573732074686973,
                        mem[236 len 24]
        if sub_c9ec945a:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x774d65736f205374726174204572726f722028556e7061757365293a20537472617465677920697320696e2070616e6963206d6f6465,
                        mem[218 len 10]
        if not uint8(stor0.field_160):
            revert with 0, 'Pausable: not paused'
        Mask(96, 0, stor0.field_160) = 0
        emit Unpaused(msg.sender);
        require ext_code.size(inputAddress)
        staticcall inputAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), 0x30b65159db82efcf8cede9861bc6b85336310eb2
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
            revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(inputAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[324 len 0] = 0
        call inputAddress.0x36310eb2 with:
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, -1
            if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            require ext_code.size(outputAddress)
            staticcall outputAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(unirouterAddress)
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
                revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
            if ext_code.size(outputAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[424 len 64] = 0, address(unirouterAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call outputAddress with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args -1, mem[360 len 28], mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, -1
                if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                    revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                require ext_code.size(inputAddress)
                staticcall inputAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint8(stor0.field_160):
                    revert with 0, 'Pausable: paused'
                if address(vaultAddress) != msg.sender:
                    if this.address != msg.sender:
                        if harvesterAddress != msg.sender:
                            revert with 0, 
                                        32,
                                        109,
                                        0xfe4d65736f205374726174204572726f7220284465706f736974293a20556e617574686f72697a6564206163636573732e204f6e6c7920746865207661756c742c206861727665737465722c206f72207468697320636f6e74726163742063616e206163636573732074686973,
                                        mem[601 len 19]
            else:
                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[456]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                require ext_code.size(inputAddress)
                staticcall inputAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint8(stor0.field_160):
                    revert with 0, 'Pausable: paused'
                if address(vaultAddress) != msg.sender:
                    if this.address != msg.sender:
                        if harvesterAddress != msg.sender:
                            revert with 0, 
                                        32,
                                        109,
                                        0xfe4d65736f205374726174204572726f7220284465706f736974293a20556e617574686f72697a6564206163636573732e204f6e6c7920746865207661756c742c206861727665737465722c206f72207468697320636f6e74726163742063616e206163636573732074686973,
                                        mem[ceil32(return_data.size) + 602 len 19]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
            require ext_code.size(outputAddress)
            staticcall outputAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(unirouterAddress)
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
                            0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 531 len 26]
            if ext_code.size(outputAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, address(unirouterAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call outputAddress with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args -1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986, 0, -1
                if not approve(address arg1, uint256 arg2), 0x30b65159db82efcf8cede986:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                require ext_code.size(inputAddress)
                staticcall inputAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint8(stor0.field_160):
                    revert with 0, 'Pausable: paused'
                if address(vaultAddress) != msg.sender:
                    if this.address != msg.sender:
                        if harvesterAddress != msg.sender:
                            revert with 0, 
                                        32,
                                        109,
                                        0xfe4d65736f205374726174204572726f7220284465706f736974293a20556e617574686f72697a6564206163636573732e204f6e6c7920746865207661756c742c206861727665737465722c206f72207468697320636f6e74726163742063616e206163636573732074686973,
                                        mem[ceil32(return_data.size) + 602 len 19]
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
                require ext_code.size(inputAddress)
                staticcall inputAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint8(stor0.field_160):
                    revert with 0, 'Pausable: paused'
                if address(vaultAddress) != msg.sender:
                    if this.address != msg.sender:
                        if harvesterAddress != msg.sender:
                            revert with 0, 
                                        32,
                                        109,
                                        0xfe4d65736f205374726174204572726f7220284465706f736974293a20556e617574686f72697a6564206163636573732e204f6e6c7920746865207661756c742c206861727665737465722c206f72207468697320636f6e74726163742063616e206163636573732074686973,
                                        mem[(2 * ceil32(return_data.size)) + 603 len 19]
        require ext_code.size(inputAddress)
        staticcall inputAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            if ext_call.return_data[0] > 0:
                require ext_code.size(0x30b65159db82efcf8cede9861bc6b85336310eb2)
                call 0x30b65159db82efcf8cede9861bc6b85336310eb2.deposit(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args poolId, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}



}
