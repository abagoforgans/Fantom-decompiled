contract main {




// =====================  Runtime code  =====================


#
#  - sub_0266a857(?)
#  - zapIn(address arg1, uint256 arg2, address arg3)
#  - sub_f34c72cd(?)
#  - _fallback()
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
mapping of uint256 rewards;

function rewards(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewards[arg1]
}

function owner() {
    return owner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_68f1a4d3(?) {
    require calldata.size - 4 >= 32
    if arg1 and 10^18 > -1 / arg1:
        revert with 0, 17
    require ext_code.size(0xaaaaafbd57b72c7b28faf156093feeb76fbf6f3f)
    staticcall 0xaaaaafbd57b72c7b28faf156093feeb76fbf6f3f.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 10^18 * arg1 / 10^18:
        return (10^18 * arg1 / 10^18)
    return ext_call.return_data[0]
}

function claim() {
    require ext_code.size(0xaaaaafbd57b72c7b28faf156093feeb76fbf6f3f)
    staticcall 0xaaaaafbd57b72c7b28faf156093feeb76fbf6f3f.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xaaaaafbd57b72c7b28faf156093feeb76fbf6f3f)
    if ext_call.return_data[0] <= rewards[msg.sender]:
        call 0xaaaaafbd57b72c7b28faf156093feeb76fbf6f3f.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    else:
        call 0xaaaaafbd57b72c7b28faf156093feeb76fbf6f3f.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, rewards[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    rewards[msg.sender] = 0
    emit Claimed(msg.sender, rewards[msg.sender]);
}

function initialize() {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
            else:
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                else:
                    uint16(stor0.field_0) = 257
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                    else:
                        uint16(stor0.field_0) = 257
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
}



}
