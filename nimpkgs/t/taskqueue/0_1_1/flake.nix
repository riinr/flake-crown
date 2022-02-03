{
  description = ''High precision and high performance task scheduler '';
  inputs.src-taskqueue-0_1_1.flake = false;
  inputs.src-taskqueue-0_1_1.type = "github";
  inputs.src-taskqueue-0_1_1.owner = "jackhftang";
  inputs.src-taskqueue-0_1_1.repo = "taskqueue.nim";
  inputs.src-taskqueue-0_1_1.ref = "refs/tags/0.1.1";
  
  
  inputs."timestamp".url = "path:../../../t/timestamp";
  inputs."timestamp".type = "github";
  inputs."timestamp".owner = "riinr";
  inputs."timestamp".repo = "flake-nimble";
  inputs."timestamp".ref = "flake-pinning";
  inputs."timestamp".dir = "nimpkgs/t/timestamp";

  outputs = { self, nixpkgs, src-taskqueue-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-taskqueue-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-taskqueue-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}