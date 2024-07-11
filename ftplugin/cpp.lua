

vim.keymap.set('n', '<leader>ec', function ()
    local template = [[#include <bits/stdc++.h>
using namespace std;

// Macros for commonly used constructs
#define all(x) (x).begin(), (x).end()
#define rall(x) (x).rbegin(), (x).rend()
#define pb push_back
#define mp make_pair
#define fi first
#define se second
#define rep(i, a, b) for (int i = (a); i < (b); ++i)
#define per(i, a, b) for (int i = (a); i >= (b); --i)

// Commonly used typedefs
typedef long long ll;
typedef pair<int, int> pii;
typedef vector<int> vi;
typedef vector<vi> vvi;

// Inline functions for competitive programming
inline int gcd(int a, int b) { return b == 0 ? a : gcd(b, a % b); }
inline int lcm(int a, int b) { return a / gcd(a, b) * b; }

// Constants
const int MOD = 1e9 + 7;
const double PI = acos(-1);

int main() {
    ios::sync_with_stdio(false);
    cin.tie(nullptr);

    // Your code here

    return 0;
}]]
    vim.api.nvim_buf_set_lines(
        vim.api.nvim_get_current_buf(),
        vim.fn.line('.'),
        vim.fn.line('.'),
        false,
        vim.split(template, '\n')
    )
end)



-- for executing cpp files ( for competitive or short programs only, will only execute currently open file )
vim.keymap.set('n', '<leader>ex', function()
    local filename = vim.fn.expand('%:t')
    local full_screen_width = vim.api.nvim_get_option_value('columns', {})
    local output_width_size = math.floor(full_screen_width * 0.4)

    vim.cmd('vsplit')
    vim.cmd('wincmd L')
    vim.cmd(output_width_size..'wincmd |')

    vim.cmd('terminal g++ -o main '..filename..'; ./main')
    vim.cmd('startinsert')
end)


