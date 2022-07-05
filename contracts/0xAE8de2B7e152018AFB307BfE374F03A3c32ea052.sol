contract main {




// =====================  Runtime code  =====================


address nftContractAddress;
uint256 maxClaim;
address owner;
mapping of uint256 blacklist;
uint8 paused;
uint256 stor4;

function paused() payable {
    return bool(uint8(paused))
}

function Blacklist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return blacklist[arg1]
}

function owner() payable {
    return owner
}

function maxClaim() payable {
    return maxClaim
}

function nftContract() payable {
    return nftContractAddress
}

function _fallback() payable {
    revert
}

function togglePause() payable {
    if owner != msg.sender:
        revert with 0, 'you cannot run this function'
    uint256(stor4) = not bool(uint8(paused)) or Mask(248, 8, uint256(stor4))
}

function sub_c285c0b0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'you cannot run this function'
    if uint8(paused):
        revert with 0, 'contract is paused'
    maxClaim = arg1
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function claimToken() payable {
    if uint8(paused):
        revert with 0, 'contract is paused'
    require ext_code.size(nftContractAddress)
    call nftContractAddress.balanceOf(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'you must hold the proper token to interact with this function'
    if blacklist[address(msg.sender)] >= maxClaim:
        revert with 0, 'you have claimed the maxiumum amount of tokens'
    require ext_code.size(nftContractAddress)
    call nftContractAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(nftContractAddress)
    call nftContractAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if blacklist[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    blacklist[address(msg.sender)]++
}



}
