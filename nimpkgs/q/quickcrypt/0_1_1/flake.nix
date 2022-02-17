{
  description = ''A library for quickly and easily encrypting strings & files. User-friendly and highly compatible.'';
  inputs.src-quickcrypt-0_1_1.flake = false;
  inputs.src-quickcrypt-0_1_1.type = "github";
  inputs.src-quickcrypt-0_1_1.owner = "theAkito";
  inputs.src-quickcrypt-0_1_1.repo = "nim-quickcrypt";
  inputs.src-quickcrypt-0_1_1.ref = "refs/tags/0.1.1";
  
  
  inputs."nimaes".type = "github";
  inputs."nimaes".owner = "riinr";
  inputs."nimaes".repo = "flake-nimble";
  inputs."nimaes".ref = "flake-pinning";
  inputs."nimaes".dir = "nimpkgs/n/nimaes";

  
  inputs."neoid".type = "github";
  inputs."neoid".owner = "riinr";
  inputs."neoid".repo = "flake-nimble";
  inputs."neoid".ref = "flake-pinning";
  inputs."neoid".dir = "nimpkgs/n/neoid";

  outputs = { self, nixpkgs, src-quickcrypt-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-quickcrypt-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-quickcrypt-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}