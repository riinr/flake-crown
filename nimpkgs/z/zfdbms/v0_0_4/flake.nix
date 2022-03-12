{
  description = ''Simple database generator, connector and query tools.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-zfdbms-v0_0_4.flake = false;
  inputs.src-zfdbms-v0_0_4.owner = "zendbit";
  inputs.src-zfdbms-v0_0_4.ref   = "refs/tags/v0.0.4";
  inputs.src-zfdbms-v0_0_4.repo  = "nim.zfdbms";
  inputs.src-zfdbms-v0_0_4.type  = "github";
  
  inputs."stdext".dir   = "nimpkgs/s/stdext";
  inputs."stdext".owner = "riinr";
  inputs."stdext".ref   = "flake-pinning";
  inputs."stdext".repo  = "flake-nimble";
  inputs."stdext".type  = "github";
  inputs."stdext".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stdext".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-zfdbms-v0_0_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-zfdbms-v0_0_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}