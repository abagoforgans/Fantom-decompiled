contract main {




// =====================  Runtime code  =====================


const sub_bf4b5ecc(?) = 667

const TREASURY_FEE = 333

const MAX_FEE = 1000


address owner;
address gaspriceAddress;
address sub_9935d7beAddress;
address sub_26cb64d0Address;
uint32 stor4;
address treasuryAddress;
uint256 stor4;
address rewardPoolAddress;
uint32 stor6;
address unirouterAddress;
uint256 stor6;
array of struct sub_f7f0b0f3;

function unirouter() payable {
    return address(unirouterAddress)
}

function sub_26cb64d0(?) payable {
    return sub_26cb64d0Address
}

function treasury() payable {
    return address(treasuryAddress)
}

function rewardPool() payable {
    return rewardPoolAddress
}

function gasprice() payable {
    return gaspriceAddress
}

function owner() payable {
    return owner
}

function sub_9935d7be(?) payable {
    return sub_9935d7beAddress
}

function sub_f7f0b0f3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_f7f0b0f3.length
    return sub_f7f0b0f3[arg1].field_0
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

function setRewardPool(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit NewRewardPool(rewardPoolAddress, arg1);
    rewardPoolAddress = arg1
}

function setTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit NewTreasury(address(treasuryAddress), arg1);
    address(treasuryAddress) = arg1
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

function inCaseTokensGetStuck(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
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
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function setUnirouter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit NewUnirouter(address(unirouterAddress), arg1);
    require ext_code.size(sub_9935d7beAddress)
    staticcall sub_9935d7beAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), arg1
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
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(sub_9935d7beAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    call sub_9935d7beAddress with:
         gas gas_remaining wei
        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1
        if not approve(address arg1, uint256 arg2), address(arg1) << 64:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if ext_code.size(sub_9935d7beAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0
        mem[488 len 0] = 0
        call sub_9935d7beAddress with:
           funct uint32(stor6)
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0) << 256, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1
            if not approve(address arg1, uint256 arg2), address(arg1) << 64:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 531 len 26]
        if ext_code.size(sub_9935d7beAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0
        call sub_9935d7beAddress with:
           funct uint32(stor6)
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1
            if not approve(address arg1, uint256 arg2), address(arg1) << 64:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    address(unirouterAddress) = arg1
}

function harvest() payable {
    require ext_code.size(sub_9935d7beAddress)
    staticcall sub_9935d7beAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(sub_9935d7beAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), 0
        call sub_9935d7beAddress with:
           funct uint32(stor4)
             gas gas_remaining wei
            args 0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), 0
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if not ext_call.return_data[0]:
                if not sub_f7f0b0f3.length:
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, 0, 160, rewardPoolAddress, block.timestamp + 600, sub_f7f0b0f3.length
                else:
                    mem[456] = address(sub_f7f0b0f3.field_0)
                    idx = 456
                    s = 0
                    while (32 * sub_f7f0b0f3.length) + 456 > idx + 32:
                        mem[idx + 32] = sub_f7f0b0f3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, 0, 160, rewardPoolAddress, block.timestamp + 600, sub_f7f0b0f3.length, mem[456 len 32 * sub_f7f0b0f3.length]
            else:
                require ext_call.return_data[0]
                if 667 * ext_call.return_data[0] / ext_call.return_data[0] != 667:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                if not sub_f7f0b0f3.length:
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 667 * ext_call.return_data[0] / 1000, 0, 160, rewardPoolAddress, block.timestamp + 600, sub_f7f0b0f3.length
                else:
                    mem[456] = address(sub_f7f0b0f3.field_0)
                    idx = 456
                    s = 0
                    while (32 * sub_f7f0b0f3.length) + 456 > idx + 32:
                        mem[idx + 32] = sub_f7f0b0f3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 667 * ext_call.return_data[0] / 1000, 0, 160, rewardPoolAddress, block.timestamp + 600, sub_f7f0b0f3.length, mem[456 len 32 * sub_f7f0b0f3.length]
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
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
            if not ext_call.return_data[0]:
                if not sub_f7f0b0f3.length:
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, 0, 160, rewardPoolAddress, block.timestamp + 600, sub_f7f0b0f3.length
                else:
                    mem[ceil32(return_data.size) + 457] = address(sub_f7f0b0f3.field_0)
                    idx = ceil32(return_data.size) + 457
                    s = 0
                    while ceil32(return_data.size) + (32 * sub_f7f0b0f3.length) + 457 > idx + 32:
                        mem[idx + 32] = sub_f7f0b0f3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, 0, 160, rewardPoolAddress, block.timestamp + 600, sub_f7f0b0f3.length, mem[ceil32(return_data.size) + 457 len 32 * sub_f7f0b0f3.length]
            else:
                require ext_call.return_data[0]
                if 667 * ext_call.return_data[0] / ext_call.return_data[0] != 667:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 362 len 31]
                if not sub_f7f0b0f3.length:
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 667 * ext_call.return_data[0] / 1000, 0, 160, rewardPoolAddress, block.timestamp + 600, sub_f7f0b0f3.length
                else:
                    mem[ceil32(return_data.size) + 457] = address(sub_f7f0b0f3.field_0)
                    idx = ceil32(return_data.size) + 457
                    s = 0
                    while ceil32(return_data.size) + (32 * sub_f7f0b0f3.length) + 457 > idx + 32:
                        mem[idx + 32] = sub_f7f0b0f3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 667 * ext_call.return_data[0] / 1000, 0, 160, rewardPoolAddress, block.timestamp + 600, sub_f7f0b0f3.length, mem[ceil32(return_data.size) + 457 len 32 * sub_f7f0b0f3.length]
    else:
        require ext_call.return_data[0]
        if 333 * ext_call.return_data[0] / ext_call.return_data[0] != 333:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(sub_9935d7beAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, 333 * ext_call.return_data[0] / 1000) >> 32
        call sub_9935d7beAddress with:
           funct uint32(stor4)
             gas gas_remaining wei
            args Mask(224, 32, 333 * ext_call.return_data[0] / 1000) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), 333 * ext_call.return_data[0] / 1000
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if not ext_call.return_data[0]:
                if not sub_f7f0b0f3.length:
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, 0, 160, rewardPoolAddress, block.timestamp + 600, sub_f7f0b0f3.length
                else:
                    mem[456] = address(sub_f7f0b0f3.field_0)
                    idx = 456
                    s = 0
                    while (32 * sub_f7f0b0f3.length) + 456 > idx + 32:
                        mem[idx + 32] = sub_f7f0b0f3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, 0, 160, rewardPoolAddress, block.timestamp + 600, sub_f7f0b0f3.length, mem[456 len 32 * sub_f7f0b0f3.length]
            else:
                require ext_call.return_data[0]
                if 667 * ext_call.return_data[0] / ext_call.return_data[0] != 667:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                if not sub_f7f0b0f3.length:
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 667 * ext_call.return_data[0] / 1000, 0, 160, rewardPoolAddress, block.timestamp + 600, sub_f7f0b0f3.length
                else:
                    mem[456] = address(sub_f7f0b0f3.field_0)
                    idx = 456
                    s = 0
                    while (32 * sub_f7f0b0f3.length) + 456 > idx + 32:
                        mem[idx + 32] = sub_f7f0b0f3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 667 * ext_call.return_data[0] / 1000, 0, 160, rewardPoolAddress, block.timestamp + 600, sub_f7f0b0f3.length, mem[456 len 32 * sub_f7f0b0f3.length]
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
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
            if not ext_call.return_data[0]:
                if not sub_f7f0b0f3.length:
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, 0, 160, rewardPoolAddress, block.timestamp + 600, sub_f7f0b0f3.length
                else:
                    mem[ceil32(return_data.size) + 457] = address(sub_f7f0b0f3.field_0)
                    idx = ceil32(return_data.size) + 457
                    s = 0
                    while ceil32(return_data.size) + (32 * sub_f7f0b0f3.length) + 457 > idx + 32:
                        mem[idx + 32] = sub_f7f0b0f3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, 0, 160, rewardPoolAddress, block.timestamp + 600, sub_f7f0b0f3.length, mem[ceil32(return_data.size) + 457 len 32 * sub_f7f0b0f3.length]
            else:
                require ext_call.return_data[0]
                if 667 * ext_call.return_data[0] / ext_call.return_data[0] != 667:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 362 len 31]
                if not sub_f7f0b0f3.length:
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 667 * ext_call.return_data[0] / 1000, 0, 160, rewardPoolAddress, block.timestamp + 600, sub_f7f0b0f3.length
                else:
                    mem[ceil32(return_data.size) + 457] = address(sub_f7f0b0f3.field_0)
                    idx = ceil32(return_data.size) + 457
                    s = 0
                    while ceil32(return_data.size) + (32 * sub_f7f0b0f3.length) + 457 > idx + 32:
                        mem[idx + 32] = sub_f7f0b0f3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 667 * ext_call.return_data[0] / 1000, 0, 160, rewardPoolAddress, block.timestamp + 600, sub_f7f0b0f3.length, mem[ceil32(return_data.size) + 457 len 32 * sub_f7f0b0f3.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
