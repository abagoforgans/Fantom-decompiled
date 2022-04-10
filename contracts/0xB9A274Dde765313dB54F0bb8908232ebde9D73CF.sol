contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint32 stor0;
address owner; offset 8
uint256 stor0;
address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function withdrawAllToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not uint8(stor0.field_0):
        revert with 0, 'ReentrancyGuard: reentrant call'
    uint8(stor0.field_0) = 0
    require msg.sender == owner
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(tokenAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), Mask(224, 32, arg1) >> 32
    call tokenAddress with:
       funct uint32(stor0.field_0)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0):
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    uint8(stor0.field_0) = 1
}

function _fallback() payable {
    if not uint8(stor0.field_0):
        revert with 0, 'ReentrancyGuard: reentrant call'
    uint8(stor0.field_0) = 0
    if 10^18 != msg.value:
        if msg.value != 2 * 10^18:
            if msg.value != 3 * 10^18:
                if msg.value != 4 * 10^18:
                    if msg.value != 5 * 10^18:
                        if msg.value != 6 * 10^18:
                            if msg.value != 7 * 10^18:
                                if msg.value != 8 * 10^18:
                                    if msg.value != 25 * 10^14 * 3600:
                                        if msg.value != 10 * 10^18:
                                            if msg.value != 11 * 10^18:
                                                if msg.value != 12 * 10^18:
                                                    if msg.value != 13 * 10^18:
                                                        if msg.value != 14 * 10^18:
                                                            require 15 * 10^18 == msg.value
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Crowdsale: beneficiary is the zero address'
    if not msg.value:
        revert with 0, 'Crowdsale: weiAmount is 0'
    if rate * msg.value / msg.value != rate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if msg.value + weiRaised < weiRaised:
        revert with 0, 'SafeMath: addition overflow'
    weiRaised += msg.value
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(tokenAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, rate * msg.value) >> 32
    call tokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, rate * msg.value) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit TokensPurchased(msg.value, rate * msg.value, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor0.field_0) = 1
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor0.field_0):
        revert with 0, 'ReentrancyGuard: reentrant call'
    uint8(stor0.field_0) = 0
    if 10^18 != msg.value:
        if msg.value != 2 * 10^18:
            if msg.value != 3 * 10^18:
                if msg.value != 4 * 10^18:
                    if msg.value != 5 * 10^18:
                        if msg.value != 6 * 10^18:
                            if msg.value != 7 * 10^18:
                                if msg.value != 8 * 10^18:
                                    if msg.value != 25 * 10^14 * 3600:
                                        if msg.value != 10 * 10^18:
                                            if msg.value != 11 * 10^18:
                                                if msg.value != 12 * 10^18:
                                                    if msg.value != 13 * 10^18:
                                                        if msg.value != 14 * 10^18:
                                                            require 15 * 10^18 == msg.value
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Crowdsale: beneficiary is the zero address'
    if not msg.value:
        revert with 0, 'Crowdsale: weiAmount is 0'
    if rate * msg.value / msg.value != rate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if msg.value + weiRaised < weiRaised:
        revert with 0, 'SafeMath: addition overflow'
    weiRaised += msg.value
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(tokenAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, rate * msg.value) >> 32
    call tokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, rate * msg.value) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit TokensPurchased(msg.value, rate * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor0.field_0) = 1
}



}
