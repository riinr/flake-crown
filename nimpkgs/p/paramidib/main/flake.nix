{
  description = ''paramidi with nimib'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-paramidib-main.flake = false;
  inputs.src-paramidib-main.owner = "pietroppeter";
  inputs.src-paramidib-main.ref   = "refs/heads/main";
  inputs.src-paramidib-main.repo  = "paramidib";
  inputs.src-paramidib-main.type  = "github";
  
  inputs."paramidi".dir   = "nimpkgs/p/paramidi";
  inputs."paramidi".owner = "riinr";
  inputs."paramidi".ref   = "flake-pinning";
  inputs."paramidi".repo  = "flake-nimble";
  inputs."paramidi".type  = "github";
  inputs."paramidi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paramidi_soundfonts".dir   = "nimpkgs/p/paramidi_soundfonts";
  inputs."paramidi_soundfonts".owner = "riinr";
  inputs."paramidi_soundfonts".ref   = "flake-pinning";
  inputs."paramidi_soundfonts".repo  = "flake-nimble";
  inputs."paramidi_soundfonts".type  = "github";
  inputs."paramidi_soundfonts".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi_soundfonts".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."parasound".dir   = "nimpkgs/p/parasound";
  inputs."parasound".owner = "riinr";
  inputs."parasound".ref   = "flake-pinning";
  inputs."parasound".repo  = "flake-nimble";
  inputs."parasound".type  = "github";
  inputs."parasound".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parasound".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-paramidib-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-paramidib-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}