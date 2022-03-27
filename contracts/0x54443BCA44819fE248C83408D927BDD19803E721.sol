contract main {




// =====================  Runtime code  =====================


const sub_16131a18(?) = 0

const sub_216b9116(?) = 1


array of uint256 name;
array of uint256 description;
array of struct stor2;
uint256 minVotes;
uint256 sub_6eb067a0;
array of struct stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
address owner;

function name() payable {
    return name[0 len name.length]
}

function minVotes() payable {
    return minVotes
}

function sub_6eb067a0(?) payable {
    return sub_6eb067a0
}

function description() payable {
    return description[0 len description.length]
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function sub_2019a608(?) payable {
    return (block.timestamp + stor6)
}

function sub_9b3a8a07(?) payable {
    return (block.timestamp + stor6 + stor7)
}

function sub_a61e393a(?) payable {
    return (block.timestamp + stor6 + stor8)
}

function sub_63012d01(?) payable {
    require calldata.size - 4 >= 32
    revert with 0, 'not call-executable'
}

function sub_aa3daba9(?) payable {
    require calldata.size - 4 >= 64
    revert with 0, 'not delegatecall-executable'
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function cancel(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg2)
    call arg2.cancelProposal(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_6f24f8a1(?) payable {
    if stor5.length:
        mem[128] = uint256(stor5.field_0)
        if (32 * stor5.length) + 32 > 64:
            mem[160] = uint256(stor5.field_256)
            idx = 160
            s = 1
            while (32 * stor5.length) + 96 > idx:
                mem[idx + 32] = stor5[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor5.length) + 128] = 32
    mem[(32 * stor5.length) + 160] = stor5.length
    mem[(32 * stor5.length) + 192 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
    return memory
      from (32 * stor5.length) + 128
       len (96 * stor5.length) + 64
}

function options() payable {
    if not stor2.length:
        mem[(32 * stor2.length) + 128] = 32
        mem[(32 * stor2.length) + 160] = stor2.length
        mem[(32 * stor2.length) + 192 len floor32(stor2.length)] = mem[128 len floor32(stor2.length)]
        return memory
          from (32 * stor2.length) + 128
           len (96 * stor2.length) + 64
    mem[128] = uint256(stor2.field_0)
    idx = 128
    s = 0
    while (32 * stor2.length) + 96 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor2.length) + 192 len floor32(stor2.length)] = mem[128 len floor32(stor2.length)]
    return Array(len=stor2.length, data=mem[128 len floor32(stor2.length)], mem[(32 * stor2.length) + floor32(stor2.length) + 192 len (32 * stor2.length) - floor32(stor2.length)]), 
}

function sub_cb00e7d3(?) payable {
    require calldata.size - 4 >= 32
    if stor5.length:
        mem[128] = uint256(stor5.field_0)
        if (32 * stor5.length) + 32 > 64:
            mem[160] = uint256(stor5.field_256)
            idx = 160
            s = 1
            while (32 * stor5.length) + 96 > idx:
                mem[idx + 32] = stor5[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor5.length) + 420 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
    require ext_code.size(arg1)
    staticcall arg1.0xf3f4ef79 with:
            gas gas_remaining wei
           args 1, 0, minVotes, sub_6eb067a0, 256, block.timestamp + stor6, block.timestamp + stor6 + stor7, block.timestamp + stor6 + stor8, stor5.length, mem[128 len floor32(stor5.length)], mem[(32 * stor5.length) + floor32(stor5.length) + 420 len (32 * stor5.length) - floor32(stor5.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}



}
