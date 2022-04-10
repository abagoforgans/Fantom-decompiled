contract main {




// =====================  Runtime code  =====================


bool stor0; offset 256
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 16
uint256 stor0; offset 8
address owner;
array of struct reports;
uint256 stor103;
array of uint256 stor31803416089537561239136862248731574845551118351359000136225178771603843531604;
array of uint256 stor31803416089537561239136862248731574845551118351359000136225178771603843531605;

function owner() payable {
    return owner
}

function reports(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < reports.length
    return reports[arg1].field_0, reports[arg1].field_256
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function pushReport(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    reports.length++
    stor4650[stor102.length] = block.timestamp
    stor4650[stor102.length] = arg1
    emit 0xde677cb7: arg1, block.timestamp
}

function getData() payable {
    if reports.length < stor103:
        return 0
    idx = 1
    s = 0
    while uint8(idx) <= stor103:
        require reports.length - uint8(idx) < reports.length
        mem[0] = 102
        require reports[reports.length - uint8(idx)].field_256 + s >= s
        idx = idx + 1
        s = reports[reports.length - uint8(idx)].field_256 + s
        continue 
    require stor103 > 0
    if stor103:
        return stor[(2 * stor102.length - uint8(None + 1)) + _6 + 1] * None / stor103, 1
    revert
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0xfe436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
    owner = arg1
    uint8(stor0.field_0) = 1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    Mask(240, 0, stor0.field_16) = 0
    stor0.field_256 % 1 = 0
    stor0.field_256 % 1 = 0
}



}
