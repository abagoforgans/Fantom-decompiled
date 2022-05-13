contract main {




// =====================  Runtime code  =====================


#
#  - sub_1fa840b2(?)
#
array of uint256 sub_cb7330ae;
mapping of struct sub_9bf4ec2f;
uint256 numRequests;

function sub_9bf4ec2f(?) payable {
    require calldata.size - 4 >= 32
    if sub_9bf4ec2f[arg1].field_672 >= 3:
        revert with 0, 33
    return sub_9bf4ec2f[arg1].field_0, 
           sub_9bf4ec2f[arg1].field_256,
           sub_9bf4ec2f[arg1].field_512,
           sub_9bf4ec2f[arg1].field_512,
           sub_9bf4ec2f[arg1].field_680,
           sub_9bf4ec2f[arg1].field_768,
           sub_9bf4ec2f[arg1].field_1024
}

function numRequests() payable {
    return numRequests
}

function sub_cb7330ae(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 < 2
    require arg3 < sub_cb7330ae[arg1][arg2]
    return sub_cb7330ae[arg1][arg2][arg3]
}

function _fallback() payable {
    revert
}

function sub_68069901(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if msg.sender == address(arg1):
        revert with 0, 'Cannot request from yourself'
    if not address(arg1):
        revert with 0, 'Cannot request from 0x0'
    if not address(arg2):
        revert with 0, 'Cannot request token 0x0'
    if not arg3:
        revert with 0, 'Cannot request amount 0'
    sub_cb7330ae[msg.sender][0]++
    sub_cb7330ae[msg.sender][0][sub_cb7330ae[msg.sender][0]] = numRequests
    sub_cb7330ae[address(arg1)][1]++
    sub_cb7330ae[address(arg1)][1][sub_cb7330ae[address(arg1)][1]] = numRequests
    sub_9bf4ec2f[stor2].field_0 = msg.sender
    sub_9bf4ec2f[stor2].field_256 = address(arg1)
    sub_9bf4ec2f[stor2].field_512 = address(arg2)
    sub_9bf4ec2f[stor2].field_512 = address(arg2)
    sub_9bf4ec2f[stor2].field_672 = 0
    sub_9bf4ec2f[stor2].field_768 = 0
    sub_9bf4ec2f[stor2].field_680 = block.timestamp % 281474976710656
    sub_9bf4ec2f[stor2].field_768 = 0
    sub_9bf4ec2f[stor2].field_1024 = 0
    sub_9bf4ec2f[stor2].field_1024 = arg3
    if numRequests == -1:
        revert with 0, 17
    numRequests++
    emit 0xa40952ee: address(arg2), arg3, msg.sender, address(arg1), sha3(5137783)
}



}
