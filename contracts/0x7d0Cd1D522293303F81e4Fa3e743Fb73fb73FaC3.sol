contract main {




// =====================  Runtime code  =====================


const name = 'Personal Daycare', 0

const symbol = '', 0


address stor0;
array of struct stor1;
address stor2;

function _fallback() payable {
    revert
}

function sub_f1c4de09(?) payable {
    require msg.sender == stor0
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        require ext_code.size(stor2)
        call stor2.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args stor1[idx].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = msg.sender
        mem[128] = stor1[idx].field_0
        emit 0x89518b83: msg.sender, stor1[idx].field_0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_7eda9b4e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require msg.sender == stor0
    idx = 0
    while idx < arg1.length:
        if idx >= stor1.length:
            revert with 0, 50
        stor1.length++
        mem[0] = 1
        stor1[stor1.length].field_0 = stor1[idx].field_0
        mem[96] = msg.sender
        mem[128] = stor1[idx].field_0
        emit 0xacaa43ed: msg.sender, stor1[idx].field_0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_26565cb4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require msg.sender == stor0
    mem[128] = 64
    mem[160] = arg1.length
    mem[192 len arg1.length] = arg1[all]
    mem[arg1.length + 192] = 0
    emit 0xb1cd3ce9: msg.sender, Array(len=arg1.length, data=arg1[all])
    if stor1.length:
        mem[128] = uint256(stor1.field_0)
        idx = 128
        s = 0
        while (32 * stor1.length) + 96 > idx:
            mem[idx + 32] = stor1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor1.length, data=mem[128 len 32 * stor1.length])
    mem[(32 * stor1.length) + 128] = 32
    mem[(32 * stor1.length) + 160] = stor1.length
    mem[(32 * stor1.length) + 192 len 32 * stor1.length] = mem[128 len 32 * stor1.length]
    return memory
      from (32 * stor1.length) + 128
       len (96 * stor1.length) + 64
}



}
