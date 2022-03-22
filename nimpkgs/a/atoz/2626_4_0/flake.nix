{
  description = ''Amazon Web Services (AWS) APIs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-atoz-2626_4_0.flake = false;
  inputs.src-atoz-2626_4_0.owner = "disruptek";
  inputs.src-atoz-2626_4_0.ref   = "2626_4_0";
  inputs.src-atoz-2626_4_0.repo  = "atoz";
  inputs.src-atoz-2626_4_0.type  = "github";
  
  inputs."sigv4".owner = "nim-nix-pkgs";
  inputs."sigv4".ref   = "master";
  inputs."sigv4".repo  = "sigv4";
  inputs."sigv4".dir   = "1_4_0";
  inputs."sigv4".type  = "github";
  inputs."sigv4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg".owner = "nim-nix-pkgs";
  inputs."npeg".ref   = "master";
  inputs."npeg".repo  = "npeg";
  inputs."npeg".dir   = "0_26_0";
  inputs."npeg".type  = "github";
  inputs."npeg".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-atoz-2626_4_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-atoz-2626_4_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}