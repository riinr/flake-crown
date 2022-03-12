{
  description = ''AWS Security Token Service API in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-awsSTS-main.flake = false;
  inputs.src-awsSTS-main.owner = "ThomasTJdev";
  inputs.src-awsSTS-main.ref   = "refs/heads/main";
  inputs.src-awsSTS-main.repo  = "nim_awsSTS";
  inputs.src-awsSTS-main.type  = "github";
  
  inputs."sigv4".dir   = "nimpkgs/s/sigv4";
  inputs."sigv4".owner = "riinr";
  inputs."sigv4".ref   = "flake-pinning";
  inputs."sigv4".repo  = "flake-nimble";
  inputs."sigv4".type  = "github";
  inputs."sigv4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-awsSTS-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-awsSTS-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}