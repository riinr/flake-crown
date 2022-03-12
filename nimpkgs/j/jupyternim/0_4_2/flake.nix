{
  description = ''A Jupyter kernel for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-jupyternim-0_4_2.flake = false;
  inputs.src-jupyternim-0_4_2.owner = "stisa";
  inputs.src-jupyternim-0_4_2.ref   = "refs/tags/0.4.2";
  inputs.src-jupyternim-0_4_2.repo  = "jupyternim";
  inputs.src-jupyternim-0_4_2.type  = "github";
  
  inputs."zmq".dir   = "nimpkgs/z/zmq";
  inputs."zmq".owner = "riinr";
  inputs."zmq".ref   = "flake-pinning";
  inputs."zmq".repo  = "flake-nimble";
  inputs."zmq".type  = "github";
  inputs."zmq".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zmq".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmac".dir   = "nimpkgs/h/hmac";
  inputs."hmac".owner = "riinr";
  inputs."hmac".ref   = "flake-pinning";
  inputs."hmac".repo  = "flake-nimble";
  inputs."hmac".type  = "github";
  inputs."hmac".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmac".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsha2".dir   = "nimpkgs/n/nimsha2";
  inputs."nimsha2".owner = "riinr";
  inputs."nimsha2".ref   = "flake-pinning";
  inputs."nimsha2".repo  = "flake-nimble";
  inputs."nimsha2".type  = "github";
  inputs."nimsha2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsha2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."python3@".dir   = "nimpkgs/p/python3@";
  inputs."python3@".owner = "riinr";
  inputs."python3@".ref   = "flake-pinning";
  inputs."python3@".repo  = "flake-nimble";
  inputs."python3@".type  = "github";
  inputs."python3@".inputs.nixpkgs.follows = "nixpkgs";
  inputs."python3@".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-jupyternim-0_4_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-jupyternim-0_4_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}