SELECT
    traces.transaction_hash,
    traces.from_address,
    traces.to_address,
    traces.value,
    traces.contract_address,
    traces.input,
    traces.output,
    traces.trace_type,
    traces.call_type,
    traces.reward_type,
    traces.gas,
    traces.gas_used,
    traces.subtraces,
    traces.trace_address,
    traces.error,
    TIMESTAMP_SECONDS(blocks.timestamp) AS block_timestamp,
    blocks.number AS block_number,
    blocks.hash AS block_hash
FROM `ethereum-etl-dev.ethereum_blockchain_raw.blocks` AS blocks
    JOIN ethereum_blockchain_raw.traces AS traces ON blocks.number = traces.block_number


