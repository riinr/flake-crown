{
  description = ''Simple web to share books, Calibre, Jester, Spectre CSS, No JavaScript, WebP & ZIP to reduce bandwidth'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."biblioteca_guarrilla-master".url = "path:./master";
  inputs."biblioteca_guarrilla-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."biblioteca_guarrilla-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."biblioteca_guarrilla-0_1_5".url = "path:./0_1_5";
  inputs."biblioteca_guarrilla-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."biblioteca_guarrilla-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."biblioteca_guarrilla-0_1_8".url = "path:./0_1_8";
  inputs."biblioteca_guarrilla-0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."biblioteca_guarrilla-0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."biblioteca_guarrilla-0_1_9".url = "path:./0_1_9";
  inputs."biblioteca_guarrilla-0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."biblioteca_guarrilla-0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}