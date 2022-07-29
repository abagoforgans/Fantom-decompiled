contract main {




// =====================  Runtime code  =====================


#
#  - removeBid(uint256 arg1, address arg2)
#  - sub_f9d222bf(?)
#
address mediaContractAddress;
address stor1;
mapping of struct bidForTokenBidder;
mapping of struct currentAskForToken;

function mediaContract() payable {
    return mediaContractAddress
}

function currentAskForToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return currentAskForToken[arg1].field_0, currentAskForToken[arg1].field_256
}

function bidForTokenBidder(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bidForTokenBidder[arg1][address(arg2)].field_0, 
           bidForTokenBidder[arg1][address(arg2)].field_256,
           bidForTokenBidder[arg1][address(arg2)].field_512,
           bidForTokenBidder[arg1][address(arg2)].field_768
}

function _fallback() payable {
    revert
}

function isValidBid(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return not not arg2
}

function splitShare(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg2 == arg2
    if arg2 and arg1 > -1 / arg2:
        revert with 'NH{q', 17
    return (arg2 * arg1 / 10^18 / 100)
}

function removeAsk(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if mediaContractAddress != msg.sender:
        revert with 0, 'Market: Only media contract'
    emit 0xbf58f6d6: currentAskForToken[arg1].field_0, currentAskForToken[arg1].field_256, arg1
    currentAskForToken[arg1].field_0 = 0
    currentAskForToken[arg1].field_256 = 0
}

function configure(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'Market: Only owner'
    if mediaContractAddress:
        revert with 0, 'Market: Already configured'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Market: cannot set media contract as zero address'
    mediaContractAddress = arg1
}

function setAsk(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require calldata.size - 36 >= 64
    require arg2 == arg2
    require arg3 == arg3
    if mediaContractAddress != msg.sender:
        revert with 0, 'Market: Only media contract'
    if not arg2:
        revert with 0, 'Market: Ask invalid for share splitting'
    currentAskForToken[arg1].field_0 = arg2
    currentAskForToken[arg1].field_256 = arg3
    emit 0xf7347cb9: arg2, arg3, arg1
}

function sub_85100850(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require calldata.size - 36 >= 128
    if mediaContractAddress != msg.sender:
        revert with 0, 'Market: Only media contract'
    require arg4 == address(arg4)
    mem[128] = bidForTokenBidder[arg1][address(arg4)].field_256
    mem[160] = bidForTokenBidder[arg1][address(arg4)].field_512
    mem[192] = bidForTokenBidder[arg1][address(arg4)].field_768
    if bidForTokenBidder[arg1][address(arg4)].field_0 <= 0:
        revert with 0, 'Market: cannot accept bid of 0'
    if bidForTokenBidder[arg1][address(arg4)].field_0 != arg2:
        revert with 0, 'Market: Unexpected bid found.'
    require arg3 == address(arg3)
    if bidForTokenBidder[arg1][address(arg4)].field_256 != address(arg3):
        revert with 0, 'Market: Unexpected bid found.'
    require arg5 == address(arg5)
    if bidForTokenBidder[arg1][address(arg4)].field_768 != address(arg5):
        revert with 0, 'Market: Unexpected bid found.'
    if not bidForTokenBidder[arg1][address(arg4)].field_0:
        revert with 0, 'Market: Bid invalid for share splitting'
    mem[224] = bidForTokenBidder[arg1][bidForTokenBidder[arg1][address(arg4)].field_512].field_0
    mem[256] = bidForTokenBidder[arg1][bidForTokenBidder[arg1][address(arg4)].field_512].field_256
    mem[288] = bidForTokenBidder[arg1][bidForTokenBidder[arg1][address(arg4)].field_512].field_512
    mem[320] = bidForTokenBidder[arg1][bidForTokenBidder[arg1][address(arg4)].field_512].field_768
    mem[356] = arg1
    require ext_code.size(mediaContractAddress)
    staticcall mediaContractAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[352] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 388] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 420] = bidForTokenBidder[arg1][bidForTokenBidder[arg1][address(arg4)].field_512].field_0
    mem[ceil32(return_data.size) + 352] = 68
    mem[ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 452] = 32
    mem[ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(bidForTokenBidder[arg1][bidForTokenBidder[arg1][address(arg4)].field_512].field_256) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 516 len 96] = 0, ext_call.return_data[12 len 20], bidForTokenBidder[arg1][bidForTokenBidder[arg1][address(arg4)].field_512].field_0, 0
    mem[ceil32(return_data.size) + 584] = 0
    call bidForTokenBidder[arg1][bidForTokenBidder[arg1][address(arg4)].field_512].field_256 with:
       funct Mask(32, 224, 0, ext_call.return_data[12 len 20], bidForTokenBidder[arg1][bidForTokenBidder[arg1][address(arg4)].field_512].field_0, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, ext_call.return_data[12 len 20], bidForTokenBidder[arg1][bidForTokenBidder[arg1][address(arg4)].field_512].field_0, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if bidForTokenBidder[arg1][address(arg4)].field_0 > 0:
                revert with memory
                  from 128
                   len bidForTokenBidder[arg1][address(arg4)].field_0
            revert with 0, 'SafeERC20: low-level call failed'
        if bidForTokenBidder[arg1][address(arg4)].field_0 > 0:
            require bidForTokenBidder[arg1][address(arg4)].field_0 >= 32
            require bidForTokenBidder[arg1][address(arg4)].field_256 == bool(bidForTokenBidder[arg1][address(arg4)].field_256)
            if not bidForTokenBidder[arg1][address(arg4)].field_256:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 548] == bool(mem[ceil32(return_data.size) + 548])
            if not mem[ceil32(return_data.size) + 548]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(mediaContractAddress)
    call mediaContractAddress.auctionTransfer(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1, bidForTokenBidder[arg1][bidForTokenBidder[arg1][address(arg4)].field_512].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    bidForTokenBidder[arg1][bidForTokenBidder[arg1][address(arg4)].field_512].field_0 = 0
    bidForTokenBidder[arg1][bidForTokenBidder[arg1][address(arg4)].field_512].field_256 = 0
    bidForTokenBidder[arg1][bidForTokenBidder[arg1][address(arg4)].field_512].field_512 = 0
    bidForTokenBidder[arg1][bidForTokenBidder[arg1][address(arg4)].field_512].field_768 = 0
    emit 0x84c439af: bidForTokenBidder[arg1][bidForTokenBidder[arg1][address(arg4)].field_512].field_0, bidForTokenBidder[arg1][bidForTokenBidder[arg1][address(arg4)].field_512].field_256, bidForTokenBidder[arg1][bidForTokenBidder[arg1][address(arg4)].field_512].field_512, bidForTokenBidder[arg1][bidForTokenBidder[arg1][address(arg4)].field_512].field_768, arg1
}



}
