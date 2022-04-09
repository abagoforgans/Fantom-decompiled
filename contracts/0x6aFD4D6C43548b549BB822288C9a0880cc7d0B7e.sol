contract main {




// =====================  Runtime code  =====================


bool stor0; offset 256
uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
address stor51;
mapping of uint256 sub_5b04f4c8;
address sub_693c5e24Address;

function sub_5b04f4c8(?) payable {
    require calldata.size - 4 >= 64
    return sub_5b04f4c8[arg1][arg2]
}

function sub_693c5e24(?) payable {
    return sub_693c5e24Address
}

function _fallback() payable {
    revert
}

function sub_21d585c3(?) payable {
    require calldata.size - 4 >= 64
    return not bool(sub_5b04f4c8[address(arg1)][arg2])
}

function sub_4a37ec9d(?) payable {
    require calldata.size - 4 >= 64
    if arg2 > sub_5b04f4c8[msg.sender][arg1]:
        revert with 0, 'low outstanding sFTM balance'
    require ext_code.size(sub_693c5e24Address)
    staticcall sub_693c5e24Address.allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'insufficient allowance'
    sub_5b04f4c8[msg.sender][arg1] -= arg2
    require ext_code.size(sub_693c5e24Address)
    call sub_693c5e24Address.burnFrom(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor0.field_168):
        stor51 = arg1
        sub_693c5e24Address = arg2
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_160):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0xfe436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_168):
            stor51 = arg1
            sub_693c5e24Address = arg2
        else:
            uint8(stor0.field_160) = 1
            uint8(stor0.field_168) = 1
            Mask(88, 0, stor0.field_168) = 0
            stor0.field_256 % 1 = 0
            stor51 = arg1
            sub_693c5e24Address = arg2
            uint8(stor0.field_168) = 0
}

function sub_ca2d6fd8(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor51)
    staticcall stor51.0x670322f8 with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'delegation isn't locked up'
    if ext_call.return_data[0] <= sub_5b04f4c8[address(msg.sender)][arg1]:
        revert with 0, 'sFTM is already minted'
    sub_5b04f4c8[address(msg.sender)][arg1] = ext_call.return_data[0]
    require ext_code.size(sub_693c5e24Address)
    call sub_693c5e24Address.mint(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0] - sub_5b04f4c8[address(msg.sender)][arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'failed to mint sFTM'
}



}
