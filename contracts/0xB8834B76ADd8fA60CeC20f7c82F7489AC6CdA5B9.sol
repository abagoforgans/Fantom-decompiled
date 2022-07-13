contract main {




// =====================  Runtime code  =====================


#
#  - depositBribe(address arg1, uint256 arg2, bytes32 arg3, uint256 arg4)
#
const DENOMINATOR = 10000


address owner;
mapping of struct sub_53da67f6;
mapping of struct tokenInfo;
mapping of uint8 stor3;
mapping of uint8 stor4;
address feeAddress;
uint256 platformFee;
uint8 stor7;

function sub_14ee0a5e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function platformFee() payable {
    return platformFee
}

function feeAddress() payable {
    return feeAddress
}

function sub_53da67f6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_53da67f6[arg1].field_0, sub_53da67f6[arg1].field_256
}

function sub_5d3a8999(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    return bool(stor3[arg1])
}

function sub_856734c4(?) payable {
    return bool(stor7)
}

function owner() payable {
    return owner
}

function sub_8f3b80b2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor4[arg1])
}

function tokenInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(tokenInfo[arg1].field_0), tokenInfo[arg1].field_8
}

function _fallback() payable {
    revert
}

function approveDelegationVote(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor4[address(msg.sender)]) != 1:
        revert with 0, 'Team only'
    stor3[arg1] = 1
}

function updateFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeAddress = arg1
}

function setWhitelistRequired(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7 = uint8(arg1)
    emit 0x1fc0ad5b: arg1
}

function whitelistToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor4[address(msg.sender)]) != 1:
        revert with 0, 'Team only'
    tokenInfo[address(arg1)].field_0 = 1
    emit Whitelisted(arg1);
}

function updateFeeAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 400:
        revert with 0, 'max fee'
    platformFee = arg1
    emit 0x545f541f: arg1
}

function modifyTeam(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = uint8(arg2)
    emit 0xae0b47af: address(arg1), arg2
}

function updateDistributor(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenInfo[address(arg1)].field_8 = arg2
    emit 0xfbeb7d6e: arg2, arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function initiateProposal(bytes32 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if bool(stor4[address(msg.sender)]) != 1:
        revert with 0, 'Team only'
    if sub_53da67f6[arg1].field_0:
        revert with 0, 'exists'
    if arg2 <= block.timestamp:
        revert with 0, 'invalid deadline'
    sub_53da67f6[arg1].field_0 = arg2
    sub_53da67f6[arg1].field_256 = arg3
    emit Initiated(arg1);
}

function whitelistTokens(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if bool(stor4[address(msg.sender)]) != 1:
        revert with 0, 'Team only'
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        tokenInfo[mem[(32 * idx) + 140 len 20]].field_0 = 1
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[floor32(arg1.length) + 97] = mem[(32 * idx) + 140 len 20]
        emit Whitelisted(mem[floor32(arg1.length) + 97]);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function transferToDistributor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor4[address(msg.sender)]) != 1:
        revert with 0, 'Team only'
    if not tokenInfo[address(arg1)].field_8:
        revert with 0, 'no distributor'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = tokenInfo[address(arg1)].field_8
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = tokenInfo[address(arg1)].field_0
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), tokenInfo[address(arg1)].field_0, tokenInfo[address(arg1)].field_0, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), tokenInfo[address(arg1)].field_0, tokenInfo[address(arg1)].field_0, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), tokenInfo[address(arg1)].field_0, tokenInfo[address(arg1)].field_0, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
