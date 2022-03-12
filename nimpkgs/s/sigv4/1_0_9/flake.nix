{
  description = ''Amazon Web Services Signature Version 4'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sigv4-1_0_9.flake = false;
  inputs.src-sigv4-1_0_9.owner = "disruptek";
  inputs.src-sigv4-1_0_9.ref   = "refs/tags/1.0.9";
  inputs.src-sigv4-1_0_9.repo  = "sigv4";
  inputs.src-sigv4-1_0_9.type  = "github";
  
  inputs."https://github.com/jangko/nimsha2".dir   = "nimpkgs/h/https://github.com/jangko/nimsha2";
  inputs."https://github.com/jangko/nimsha2".owner = "riinr";
  inputs."https://github.com/jangko/nimsha2".ref   = "flake-pinning";
  inputs."https://github.com/jangko/nimsha2".repo  = "flake-nimble";
  inputs."https://github.com/jangko/nimsha2".type  = "github";
  inputs."https://github.com/jangko/nimsha2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/jangko/nimsha2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sigv4-1_0_9"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sigv4-1_0_9";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}