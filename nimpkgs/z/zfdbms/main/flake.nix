{
  description = ''Simple database generator, connector and query tools.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-zfdbms-main.flake = false;
  inputs.src-zfdbms-main.owner = "zendbit";
  inputs.src-zfdbms-main.ref   = "refs/heads/main";
  inputs.src-zfdbms-main.repo  = "nim.zfdbms";
  inputs.src-zfdbms-main.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-zfdbms-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-zfdbms-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}