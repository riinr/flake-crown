{
  description = ''A Jupyter Kernel for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-jupyternim-0_4_2.flake = false;
  inputs.src-jupyternim-0_4_2.ref   = "refs/tags/0.4.2";
  inputs.src-jupyternim-0_4_2.owner = "stisa";
  inputs.src-jupyternim-0_4_2.repo  = "jupyternim";
  inputs.src-jupyternim-0_4_2.type  = "github";
  
  inputs."zmq".owner = "nim-nix-pkgs";
  inputs."zmq".ref   = "master";
  inputs."zmq".repo  = "zmq";
  inputs."zmq".dir   = "v1_3_1";
  inputs."zmq".type  = "github";
  inputs."zmq".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zmq".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmac".owner = "nim-nix-pkgs";
  inputs."hmac".ref   = "master";
  inputs."hmac".repo  = "hmac";
  inputs."hmac".dir   = "0_2_0";
  inputs."hmac".type  = "github";
  inputs."hmac".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmac".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsha2".owner = "nim-nix-pkgs";
  inputs."nimsha2".ref   = "master";
  inputs."nimsha2".repo  = "nimsha2";
  inputs."nimsha2".dir   = "master";
  inputs."nimsha2".type  = "github";
  inputs."nimsha2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsha2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."python3".owner = "nim-nix-pkgs";
  inputs."python3".ref   = "master";
  inputs."python3".repo  = "python3";
  inputs."python3".dir   = "master";
  inputs."python3".type  = "github";
  inputs."python3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."python3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-jupyternim-0_4_2"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-jupyternim-0_4_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}