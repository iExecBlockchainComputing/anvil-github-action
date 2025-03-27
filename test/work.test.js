import { expect, test } from "vitest";

test("Anvil is running", async () => {
    const response = await fetch("http://127.0.0.1:8545", { // Change localhost to 127.0.0.1
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
            jsonrpc: "2.0",
            id: 1,
            method: "eth_chainId",
            params: []
        })
    });
    const data = await response.json();
    expect(data).toHaveProperty("result");
});
