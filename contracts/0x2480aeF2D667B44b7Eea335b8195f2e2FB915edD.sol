contract main {




// =====================  Runtime code  =====================


array of struct sub_f80ac00d;
mapping of struct addFriend;
array of uint256 sub_ecd27aaf;

function addFriend(address arg1) payable {
    require calldata.size - 4 >= 32
    mem[128] = addFriend[arg1].field_0
    idx = 128
    s = 0
    while addFriend[arg1].length + 96 > idx:
        mem[idx + 32] = addFriend[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=addFriend[arg1].length, data=mem[128 len addFriend[arg1].length]), 
           addFriend[arg1].field_256,
           addFriend[arg1].field_512,
           bool(addFriend[arg1].field_768)
}

function sub_ecd27aaf(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_ecd27aaf[arg1]
    return sub_ecd27aaf[arg1][arg2]
}

function sub_f80ac00d(?) payable {
    return sub_f80ac00d[address(msg.sender)][0 len sub_f80ac00d[address(msg.sender)].length].field_0
}

function _fallback() payable {
    revert
}

function sub_f10a3fcc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    sub_f80ac00d[address(msg.sender)][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_f80ac00d[address(msg.sender)].field_256 = block.timestamp
    sub_f80ac00d[address(msg.sender)].field_512 = 0
    sub_f80ac00d[address(msg.sender)].field_768 = 0
}

function members(address arg1) payable {
    require calldata.size - 4 >= 32
    mem[128] = sub_f80ac00d[arg1].field_0
    idx = 128
    s = 0
    while sub_f80ac00d[arg1].length + 96 > idx:
        mem[idx + 32] = sub_f80ac00d[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_f80ac00d[arg1].length, data=mem[128 len sub_f80ac00d[arg1].length]), 
           sub_f80ac00d[arg1].field_256,
           sub_f80ac00d[arg1].field_512,
           bool(sub_f80ac00d[arg1].field_768)
}



}
